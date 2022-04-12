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

  /**
   * Search flights
   *
   * @param {string} value search value
   * @memberof HistoryComponent
   */
  public async searchFlights(value: string) {
    this.flightList = await RequestController.getFlights(value);
  }

  /**
   * Navigate to flight view
   * 
   * @param {number} flightId id of the flight
   */
  public seeFlightDetails(flightId: number) {
    this.router.navigate([`flight-details/${flightId}`]);
  }
}
