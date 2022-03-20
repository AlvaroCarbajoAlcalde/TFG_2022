import { AfterViewInit, Component, OnDestroy, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import * as L from 'leaflet';
import { catchError } from 'rxjs';
import { environment } from 'src/environments/environment';
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

  constructor(private router: Router) {}

  ngOnInit(): void {
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
  }

  ngAfterViewInit(): void {
    //#region map
    this.map = L.map('map', {
      center: [42.55878426869105, -2.8633044423426677],
      zoom: 11,
    });

    const tiles = L.tileLayer(
      'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
      {
        maxZoom: 15,
        minZoom: 12,
      }
    );

    tiles.addTo(this.map);
    //#endregion

    const marker = L.circleMarker([0, 0], { radius: 2 });
    marker.addTo(this.map);

    this.mapUpdateInterval = setInterval(() => {
      try {
        marker.setLatLng(
          new L.LatLng(balloon.calcDegreesLat(), balloon.calcDegreesLon())
        );
        this.map.panTo(
          new L.LatLng(balloon.calcDegreesLat(), balloon.calcDegreesLon())
        );
      } catch (e) {}
    }, 250);
  }

  ngOnDestroy(): void {
    document.body.classList.remove('no-overflow');
    clearInterval(this.mapUpdateInterval);
  }

  endGame() {
    endSim();
    this.router.navigate(['']);
  }
}
