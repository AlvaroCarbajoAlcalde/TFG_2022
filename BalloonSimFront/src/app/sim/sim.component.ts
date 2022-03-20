import { AfterViewInit, Component, OnDestroy, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import * as L from 'leaflet';
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

@Component({
  selector: 'app-sim',
  templateUrl: './sim.component.html',
})
export class SimComponent implements OnInit, OnDestroy, AfterViewInit {
  private map!: L.Map;
  
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
    this.map = L.map('map', {
      center: [42.55878426869105, -2.8633044423426677],
      zoom: 11,
    });

    const tiles = L.tileLayer(
      'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
      {
        maxZoom: 15,
        minZoom: 10,
      }
    );

    tiles.addTo(this.map);
  }

  ngOnDestroy(): void {
    document.body.classList.remove('no-overflow');
  }

  endGame() {
    endSim();
    this.router.navigate(['']);
  }
}
