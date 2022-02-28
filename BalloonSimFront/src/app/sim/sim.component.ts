import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';

declare const resizeCanvas: any;
declare const queryHTML: any;
declare const startGame: any;
declare const endSim: any;

@Component({
  selector: 'app-sim',
  templateUrl: './sim.component.html',
})
export class SimComponent implements OnInit {
  constructor(private router: Router) {}

  ngOnInit(): void {
    console.time('load-game');
    queryHTML();
    startGame();

    window.onresize = () => {
      resizeCanvas();
    };
  }

  endGame() {
    endSim();
    this.router.navigate(["home"]);
  }
}
