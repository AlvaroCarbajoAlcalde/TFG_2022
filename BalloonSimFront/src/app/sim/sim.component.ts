import { AfterViewInit, Component, OnDestroy, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import * as L from 'leaflet';
import { environment } from 'src/environments/environment';
import backgroundController from '../class/backgroundController';
import { GLOBAL } from '../class/global';
import RequestController from '../class/requestController';

declare const resizeCanvas: any;
declare const queryHTML: any;
declare const startGame: any;
declare const endSim: any;
declare const setSelectedSkybox: any;
declare let testing: any;
declare let showCollisions: any;
declare let startPoint: any;
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

    //FirstPoint
    // RequestController.savePoint(
    //   this.flightID,
    //   0,
    //   GLOBAL.SelectedTakeoff.lat,
    //   GLOBAL.SelectedTakeoff.lon,
    //   Math.round(GLOBAL.SelectedTakeoff.y * 3.28)
    // );
  }

  async ngAfterViewInit(): Promise<void> {
    await GLOBAL.initGLOBAL();

    document.getElementById('mapCentering')?.classList.add('center');

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

    const route = new L.Polyline([], {
      color: 'red',
      weight: 3,
      opacity: 0.7,
      smoothFactor: 0,
    });
    route.addTo(this.map);

    const marker = L.circleMarker([0, 0], { radius: 2 });
    marker.addTo(this.map);

    //Map update interval
    this.mapUpdateInterval = setInterval(() => {
      if (balloon && this.flightID && this.seconds > environment.secondsBetweenRouteSaves) {
        const latLng = new L.LatLng(
          balloon.calcDegreesLat(),
          balloon.calcDegreesLon()
        );
        marker.setLatLng(latLng);
        if (this.isMapCentered) this.map.panTo(latLng);
        route.addLatLng(latLng);
      }
    }, 300);

    //Save points interval
    this.pointsSaveInterval = setInterval(() => {
      if (balloon && this.flightID) {
        RequestController.savePoint(
          this.flightID,
          this.seconds,
          balloon.calcDegreesLat(),
          balloon.calcDegreesLon(),
          Math.round(balloon.altura * 3.28)
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

  endGame() {
    endSim();
    this.router.navigate([`flight-details/${this.flightID}`]);
  }

  toggleMapCentering() {
    this.isMapCentered = !this.isMapCentered;
    if (this.isMapCentered)
      document.getElementById('mapCentering')?.classList.add('center');
    else document.getElementById('mapCentering')?.classList.remove('center');
  }
}
