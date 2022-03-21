import { Component, OnInit } from '@angular/core';
import RequestController from '../class/requestController';
import Flight from '../model/flight';

@Component({
  selector: 'app-history',
  templateUrl: './history.component.html',
})
export class HistoryComponent implements OnInit {
  public flightList!: Flight[];

  constructor() {}

  async ngOnInit(): Promise<void> {
    this.flightList = await RequestController.getFlights('anon');
    console.log(this.flightList);
  }
}
