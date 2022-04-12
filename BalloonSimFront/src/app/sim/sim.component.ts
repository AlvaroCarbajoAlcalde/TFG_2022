import { AfterViewInit, Component, OnDestroy, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import * as L from 'leaflet';
import { environment } from 'src/environments/environment';
import backgroundController from '../class/backgroundController';
import { GLOBAL } from '../class/global';
import Winds from '../model/winds';
import RequestController from '../class/requestController';

declare const resizeCanvas: any;
declare const queryHTML: any;
declare const startGame: any;
declare const endSim: any;
declare const setSelectedSkybox: any;
declare let testing: any;
declare let showCollisions: any;
declare let startPoint: any;
declare let windDir: any;
declare let windSpeed: any;
declare let started: any;
declare let balloon: any;

@Component({
  selector: 'app-sim',
  templateUrl: './sim.component.html',
})
export class SimComponent implements OnInit, OnDestroy, AfterViewInit {
  private map!: L.Map;
  private mapUpdateInterval!: any;
  private pointsSaveInterval!: any;
  private flightID!: number;
  private seconds!: number;
  private isMapCentered!: boolean;

  constructor(private router: Router) { }

  async ngOnInit(): Promise<void> {
    await GLOBAL.initGLOBAL();
    backgroundController.stopInterval();
    this.seconds = 0;
    this.isMapCentered = true;
    document.body.classList.add('no-overflow');

    //#region region JS variables 

    //Position balloon
    startPoint.x = GLOBAL.SelectedTakeoff.x;
    startPoint.y = GLOBAL.SelectedTakeoff.y;
    startPoint.z = GLOBAL.SelectedTakeoff.z;

    testing = environment.testing;
    showCollisions = environment.showCollisions;
    started = false;

    setSelectedSkybox(GLOBAL.SkyboxColor);

    queryHTML();
    startGame();

    window.onresize = () => { resizeCanvas(); };
    //#endregion

    console.time('load-game');

    //Flight id
    this.flightID = await RequestController.startFlight(
      GLOBAL.SelectedTakeoff.name,
      GLOBAL.FlightName
    );
    console.info('Flight_ID:', this.flightID);

    //Save weather
    RequestController.saveWeather(this.flightID, 20, 1221, GLOBAL.Winds);
    //Save first point
    RequestController.savePoint(
      this.flightID,
      0,
      GLOBAL.SelectedTakeoff.lat,
      GLOBAL.SelectedTakeoff.lon,
      GLOBAL.SelectedTakeoff.alt
    );
  }

  async ngAfterViewInit(): Promise<void> {
    await GLOBAL.initGLOBAL();

    //#region map
    this.map = L.map('map', {
      center: [GLOBAL.SelectedTakeoff.lat, GLOBAL.SelectedTakeoff.lon],
      zoom: 14,
    });

    const tiles = L.tileLayer(
      'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
      {
        maxZoom: 17,
        minZoom: 10,
      }
    );

    tiles.addTo(this.map);
    //#endregion

    //#region Routing
    const route = new L.Polyline([], {
      color: 'red',
      weight: 3,
      opacity: 0.7,
      smoothFactor: 0,
    });
    route.addTo(this.map);

    const marker = L.circleMarker([0, 0], { radius: 2 });
    marker.addTo(this.map);
    marker.setLatLng(new L.LatLng(GLOBAL.SelectedTakeoff.lat, GLOBAL.SelectedTakeoff.lon));
    //#endregion

    //Map update interval
    this.mapUpdateInterval = setInterval(() => {
      if (started && balloon && this.flightID && this.seconds > environment.secondsBetweenRouteSaves) {
        const latLng = new L.LatLng(balloon.calcDegreesLat(), balloon.calcDegreesLon());
        marker.setLatLng(latLng);
        if (this.isMapCentered) this.map.panTo(latLng);
        route.addLatLng(latLng);
      } else {
        if (this.isMapCentered) this.map.panTo(marker.getLatLng());
      }
      this.changeBalloonDirection();
    }, 300);

    //Save points interval
    this.pointsSaveInterval = setInterval(() => {
      if (started && balloon && this.flightID) {
        RequestController.savePoint(
          this.flightID,
          this.seconds,
          balloon.calcDegreesLat(),
          balloon.calcDegreesLon(),
          Math.round(balloon.altura)
        );
        this.seconds += environment.secondsBetweenRouteSaves;
      }
    }, environment.secondsBetweenRouteSaves * 1000);
  }

  ngOnDestroy(): void {
    document.body.classList.remove('no-overflow');
    backgroundController.startInterval();
    clearInterval(this.mapUpdateInterval);
    clearInterval(this.pointsSaveInterval);
  }

  /**
   * Ends the simulation
   */
  endGame() {
    endSim();
    started = false;
    this.router.navigate([`flight-details/${this.flightID}`]);
  }

  /**
   * Toggle map centering
   */
  toggleMapCentering() {
    this.isMapCentered = !this.isMapCentered;
    if (this.isMapCentered)
      document.getElementById('mapCentering')?.classList.add('center');
    else document.getElementById('mapCentering')?.classList.remove('center');
  }

  /**
   * Changes the balloon direction based on the wind
   */
  changeBalloonDirection() {
    if (balloon) {
      const actWind = GLOBAL.Winds.getWind(balloon.altura);
      windDir = actWind.windDir;
      windSpeed = actWind.windSpeed;
    }
  }
}
