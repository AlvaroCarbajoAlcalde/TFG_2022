import { Component, OnDestroy, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import backgroundController from '../class/backgroundController';
import { GLOBAL } from '../class/global';
import { timeInSecondsToString } from '../class/methods';
import RequestController from '../class/requestController';
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

  constructor(private router: Router, private _Activatedroute: ActivatedRoute) { }

  async ngOnInit(): Promise<void> {
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

  public changeTime(value: any){
    value = value as number;
    balloon.pointer.position.x = this.routes[value].x;
    balloon.pointer.position.y = this.routes[value].y;
    balloon.pointer.position.z = this.routes[value].z;
    this.labelTime.innerHTML = timeInSecondsToString(this.routes[value].seconds, true);
    (<HTMLInputElement>document.querySelector('input')).style.backgroundSize = (value) * 100 / (this.routes.length - 1) + '% 100%'
  }
}
