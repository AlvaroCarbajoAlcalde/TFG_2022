import { Component, OnInit } from '@angular/core';

declare const resizeCanvas: any;
declare const queryHTML: any;
declare const startGame: any;

@Component({
  selector: 'app-sim',
  templateUrl: './sim.component.html',
})
export class SimComponent implements OnInit {
  constructor() {}

  ngOnInit(): void {
    console.time("load-game");
    queryHTML();
    startGame();

    window.onresize = () => {
      resizeCanvas();
    };
  }
}
