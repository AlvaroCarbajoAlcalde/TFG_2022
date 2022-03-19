import { Component, OnInit, Renderer2 } from '@angular/core';
import { Router } from '@angular/router';
import RequestController from '../class/requestController';
import takeoffController from '../class/takeoffController';

@Component({
  selector: 'app-params',
  templateUrl: './params.component.html',
})
export class ParamsComponent implements OnInit {
  constructor(private router: Router) {}

  ngOnInit(): void {
    this.showTakeoffs();
  }

  async showTakeoffs() {
    const takeoffs = await RequestController.getTakeOffs();

    const takeoffsDiv = document.getElementById('takeoffs-container');
    if (takeoffsDiv) {
      takeoffs.forEach((takeoff) => {
        takeoffsDiv.innerHTML = takeoff.name;
      });
    }
  }
}
