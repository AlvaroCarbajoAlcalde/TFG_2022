import { AfterViewInit, Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import * as L from 'leaflet';
import RequestController from '../class/requestController';
import Flight from '../model/flight';

@Component({
  selector: 'app-flightview',
  templateUrl: './flightview.component.html',
})
export class FlightviewComponent implements OnInit, AfterViewInit {
  private flightid!: number;
  private map!: L.Map;
  public flight!: Flight;

  constructor(
    private _Activatedroute: ActivatedRoute,
    private router: Router
  ) {}

  ngOnInit(): void {
    if (this._Activatedroute.snapshot.paramMap.get('id') == null)
      this.router.navigate(['history']);
    else
      this.flightid = parseInt(
        <string>this._Activatedroute.snapshot.paramMap.get('id')
      );
  }

  async ngAfterViewInit(): Promise<void> {
    this.flight = await RequestController.getFlight(this.flightid);
    (<HTMLElement>document.getElementById('flightname')).innerHTML =
      this.flight.name;

    //#region MarkerIcons
    const iconDefault = L.icon({
      iconRetinaUrl: 'assets/img/marker-blue.png',
      iconUrl: 'assets/img/marker-blue.png',
      shadowUrl: 'assets/marker-shadow.png',
      iconSize: [25, 41],
      iconAnchor: [12, 41],
      popupAnchor: [1, -34],
      tooltipAnchor: [16, -28],
      shadowSize: [41, 41],
    });

    L.Marker.prototype.options.icon = iconDefault;
    //#endregion

    //#region Map
    this.map = L.map('map', {
      center: [42.55878426869105, -2.8633044423426677],
      zoom: 11,
    });

    const tiles = L.tileLayer(
      'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
      {
        maxZoom: 15,
        minZoom: 10,
      }
    );

    tiles.addTo(this.map);
    //#endregion

    const track = new L.Polyline([], {
      color: 'red',
      weight: 3,
      opacity: 0.7,
      smoothFactor: 1,
    });
    track.addTo(this.map);

    const routes = await RequestController.getRoute(this.flightid);
    console.table(routes)
    routes.forEach((point) => {
      track.addLatLng(new L.LatLng(point.lat, point.lon));
    });
  }
}
