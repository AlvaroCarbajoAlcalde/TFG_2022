import { Component, OnDestroy, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import backgroundController from '../class/backgroundController';
import { GLOBAL } from '../class/global';
import { timeInSecondsToString } from '../class/methods';
import RequestController from '../class/requestController';
import { faStopCircle, faPlay, faForward, faForwardFast, faForwardStep, faPlayCircle } from '@fortawesome/free-solid-svg-icons';
import Track from '../model/track';

declare const resizeCanvas: any;
declare const queryHTML: any;
declare const startGame: any;
declare const endSim: any;
declare const setSelectedSkybox: any;
declare let startPoint: any;
declare let started: any;
declare let balloon: any;
declare let userControllsAvailable: any;

@Component({
  selector: 'app-flightreview',
  templateUrl: './flightreview.component.html',
})
export class FlightReviewComponent implements OnInit, OnDestroy {
  private flightID!: number;
  private routes!: Track[];
  private labelTime!: HTMLLabelElement;
  public timeInSecondsToString = timeInSecondsToString;
  public interval!: any;
  public intervalSpeed!: number;
  private timeValue: number = 0;
  private inputRange!: HTMLInputElement;
  public startIcon = faPlayCircle;
  public x1icon = faPlay;
  public x2icon = faForwardStep;
  public x5icon = faForward;
  public x10icon = faForwardFast;
  public stopIcon = faStopCircle;
  public speed: number = 1;
  private secondsBetweenPoints!: number;

  constructor(private router: Router, private _Activatedroute: ActivatedRoute) { }

  async ngOnInit(): Promise<void> {
    this.inputRange = document.querySelector('input') as HTMLInputElement;
    userControllsAvailable = false;
    backgroundController.stopInterval();
    document.body.classList.add('no-overflow');
    this.labelTime = document.getElementById('label-time') as HTMLLabelElement;
    started = false;

    //Get flight ID from URL
    if (this._Activatedroute.snapshot.paramMap.get('id') == null) this.router.navigate(['history']);
    else this.flightID = parseInt(<string>this._Activatedroute.snapshot.paramMap.get('id'));

    this.routes = await RequestController.getRoute(this.flightID);
    document.getElementsByTagName('input')[0].max = (this.routes.length - 1).toString();
    
    if (this.routes[1])this.secondsBetweenPoints = this.routes[1].seconds  - this.routes[0].seconds;
    else this.secondsBetweenPoints = this.routes[0].seconds;

    //Position of balloon
    startPoint.x = this.routes[0].x;
    startPoint.y = this.routes[0].y;
    startPoint.z = this.routes[0].z;

    setSelectedSkybox(GLOBAL.getRandomSkybox());

    queryHTML();
    startGame();

    window.onresize = () => { resizeCanvas(); };

    console.time('load-game');
  }

  ngOnDestroy(): void {
    document.body.classList.remove('no-overflow');
    backgroundController.startInterval();
  }

  /**
   * Ends the simulation
   */
  endGame() {
    endSim();
    this.router.navigate([`flight-details/${this.flightID}`]);
  }

  /**
   * Changes the time 
   * @param {number} value value of the input
   */
  public changeTime(value: any) {
    this.stopInterval();
    value = value as number;
    this.timeValue = value;
    this.moveBalloon(this.routes[value].coords);
    this.labelTime.innerHTML = timeInSecondsToString(this.routes[value].seconds, true);
    this.inputRange.style.backgroundSize = `${(value) * 100 / (this.routes.length - 1)}% 100%`;
  }

  /**
   * Moves the balloon to the position given
   * @param {{ x: number, y: number, z: number }} coords the coordinates
   */
  public moveBalloon(coords: { x: number, y: number, z: number }) {
    balloon.pointer.position.x = coords.x;
    balloon.pointer.position.y = coords.y;
    balloon.pointer.position.z = coords.z;
  }

  /**
   * Stops the interval
   */
  public stopInterval() {
    clearInterval(this.interval);
    this.interval = null;
  }

  /**
   * Starts the interval
   */
  public startInterval() {
    if (this.interval) clearInterval(this.interval);
    this.interval = setInterval(() => {
      if (balloon) {
        this.timeValue++;
        if (this.timeValue > this.routes.length - 1) this.timeValue = this.routes.length - 1;
        this.labelTime.innerHTML = timeInSecondsToString(this.routes[this.timeValue].seconds, true);
        this.inputRange.value = this.timeValue.toString();

        const previousPoint = this.routes[this.timeValue - 1].coords;
        //Move balloon in 30 steps to simulate realistic movement
        for (let i = 0; i < 30; i++) {
          const nextPoint = this.routes[this.timeValue].coords;
          const x = previousPoint.x + (nextPoint.x - previousPoint.x) / 30 * i;
          const y = previousPoint.y + (nextPoint.y - previousPoint.y) / 30 * i;
          const z = previousPoint.z + (nextPoint.z - previousPoint.z) / 30 * i;
          setTimeout(() => {
            if (this.interval) this.moveBalloon({ x, y, z });
          }, (i * 100 / 3) / this.speed);
        }
        this.inputRange.style.backgroundSize = `${(this.timeValue) * 100 / (this.routes.length - 1)}% 100%`;
      }
    }, this.secondsBetweenPoints * 1000 / this.speed);
  }

  setSpeed(value: number) {
    this.speed = value;
    this.stopInterval();
    this.startInterval();
  }
}
