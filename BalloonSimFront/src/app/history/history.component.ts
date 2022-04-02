import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import RequestController from '../class/requestController';
import Flight from '../model/flight';

@Component({
  selector: 'app-history',
  templateUrl: './history.component.html',
})
export class HistoryComponent implements OnInit {
  public flightList!: Flight[];

  constructor(private router: Router) { }

  async ngOnInit(): Promise<void> {
    await this.searchFlights('*');
  }

  public async searchFlights(value: string) {
    this.flightList = await RequestController.getFlights(value);
  }

  public seeFlightDetails(flightId: number) {
    this.router.navigate([`flight-details/${flightId}`]);
  }
}
