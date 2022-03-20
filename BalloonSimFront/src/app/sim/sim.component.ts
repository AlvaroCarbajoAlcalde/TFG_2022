import { AfterViewInit, Component, OnDestroy, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import * as L from 'leaflet';
import { catchError, reduce } from 'rxjs';
import { environment } from 'src/environments/environment';
import RequestController from '../class/requestController';
import SkyboxController from '../class/skyboxController';
import takeoffController from '../class/takeoffController';

declare const resizeCanvas: any;
declare const queryHTML: any;
declare const startGame: any;
declare const endSim: any;
declare const setSelectedSkybox: any;
declare let testing: any;
declare let showCollisions: any;
declare let freeCamera: any;
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
  private readonly secondsBetweenSaves = 3;
  private seconds!: number;
  private isMapCentered!: boolean;

  constructor(private router: Router) {}

  async ngOnInit(): Promise<void> {
    this.seconds = 0;
    this.isMapCentered = true;
    document.body.classList.add('no-overflow');
    testing = environment.testing;
    showCollisions = environment.showCollisions;
    freeCamera = false;

    if (takeoffController.selectedTakeoff) {
      startPoint.x = takeoffController.selectedTakeoff.x;
      startPoint.y = takeoffController.selectedTakeoff.y;
      startPoint.z = takeoffController.selectedTakeoff.z;
    }

    setSelectedSkybox(SkyboxController.currentSelected);

    console.time('load-game');
    queryHTML();
    startGame();

    window.onresize = () => {
      resizeCanvas();
    };

    this.flightID = await RequestController.startFlight();
    console.info('Flight_ID', this.flightID);
  }

  ngAfterViewInit(): void {
    //#region map
    this.map = L.map('map', {
      center: [42.55878426869105, -2.8633044423426677],
      zoom: 14,
    });

    const tiles = L.tileLayer(
      'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
      {
        maxZoom: 15,
        minZoom: 10,
      }
    );

    tiles.addTo(this.map);
    //#endregion

    const route = new L.Polyline([], {
      color: 'red',
      weight: 3,
      opacity: 0.7,
      smoothFactor: 1,
    });
    route.addTo(this.map);

    const marker = L.circleMarker([0, 0], { radius: 2 });
    marker.addTo(this.map);

    this.mapUpdateInterval = setInterval(() => {
      if (balloon) {
        const latLng = new L.LatLng(
          balloon.calcDegreesLat(),
          balloon.calcDegreesLon()
        );
        marker.setLatLng(latLng);
        if (this.isMapCentered) this.map.panTo(latLng);
        route.addLatLng(latLng);
      }
    }, 250);

    this.pointsSaveInterval = setInterval(() => {
      if (balloon) {
        RequestController.savePoint(
          this.flightID,
          this.seconds,
          balloon.calcDegreesLat(),
          balloon.calcDegreesLon(),
          Math.round(balloon.altura * 3.28)
        );
        this.seconds += this.secondsBetweenSaves;
      }
    }, this.secondsBetweenSaves * 1000);
  }

  ngOnDestroy(): void {
    document.body.classList.remove('no-overflow');
    clearInterval(this.mapUpdateInterval);
    clearInterval(this.pointsSaveInterval);
  }

  endGame() {
    endSim();
    this.router.navigate(['']);
  }

  toggleMapCentering() {
    this.isMapCentered = !this.isMapCentered;
    if (this.isMapCentered)
      document.getElementById('mapCentering')?.classList.add('center');
    else document.getElementById('mapCentering')?.classList.remove('center');
  }
}
