import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
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
export class SimComponent implements OnInit {
  constructor(private router: Router) {}

  ngOnInit(): void {
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

  endGame() {
    endSim();
    this.router.navigate(['']);
  }
}
