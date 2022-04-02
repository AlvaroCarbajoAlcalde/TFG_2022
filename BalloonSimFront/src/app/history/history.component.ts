import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { GLOBAL } from '../class/global';
import RequestController from '../class/requestController';
import Flight from '../model/flight';

@Component({
  selector: 'app-history',
  templateUrl: './history.component.html',
})
export class HistoryComponent implements OnInit {
  public flightList!: Flight[];

  constructor(private router: Router) {
    GLOBAL.initGLOBAL();
  }

  async ngOnInit(): Promise<void> {
    this.flightList = await RequestController.getFlights();

    const search = <HTMLInputElement>document.getElementById('search-input');
    search.onkeyup = async () => {
      if (search.value)
        this.flightList = await RequestController.getFlights(search.value);
      else this.flightList = await RequestController.getFlights();
    };
  }

  public seeFlightDetails(flightId: number) {
    this.router.navigate([`flight-details/${flightId}`]);
  }
}
