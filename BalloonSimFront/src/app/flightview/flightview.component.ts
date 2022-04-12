import { AfterViewInit, Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import * as L from 'leaflet';
import { GLOBAL } from '../class/global';
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
  public distance!: number;

  constructor(private _Activatedroute: ActivatedRoute, private router: Router) { }

  ngOnInit(): void {
    if (this._Activatedroute.snapshot.paramMap.get('id') == null) this.router.navigate(['history']);
    else this.flightid = parseInt(<string>this._Activatedroute.snapshot.paramMap.get('id'));
  }

  async ngAfterViewInit(): Promise<void> {
    this.flight = await RequestController.getFlight(this.flightid);
    (<HTMLElement>document.getElementById('flightname')).innerHTML = this.flight.name;

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
    this.map = L.map('map', { center: [42.53, -2.85], zoom: 12 });
    const tiles = L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', { maxZoom: 16, minZoom: 10 });
    tiles.addTo(this.map);
    //#endregion

    const track = new L.Polyline([], {
      color: 'red',
      weight: 3,
      opacity: 0.7,
      smoothFactor: 0,
      interactive: true,
    });
    track.addTo(this.map);

    const routes = await RequestController.getRoute(this.flightid);

    const takeoffMarker = L.circleMarker(
      new L.LatLng(routes[0].lat, routes[0].lon),
      {
        radius: 5,
        color: 'red',
        fillColor: 'white',
        fill: true,
        fillOpacity: 1,
      }
    );
    takeoffMarker.addTo(this.map);

    this.map.panTo(new L.LatLng(routes[0].lat, routes[0].lon));

    this.distance = 0.0;
    let previousLatlng = new L.LatLng(routes[0].lat, routes[0].lon);
    routes.forEach((point) => {
      const latlng = new L.LatLng(point.lat, point.lon);
      this.distance += latlng.distanceTo(previousLatlng);
      track.addLatLng(latlng);
      previousLatlng = latlng;
    });
    this.distance = parseFloat(this.distance.toFixed(2));
  }

  /**
   * Converts a number to a string with the correct units
   * 
   * @param {number} distance distance in meters
   * @returns {string} distance in km and m
   */
  public distanceToString(distance: number): string {
    let toReturn = '';
    if (distance / 1000 > 0) {
      const km = Math.floor(distance / 1000);
      const m = Math.floor(distance % 1000);
      toReturn = `${km} Km y ${m} metros.`;
    } else {
      toReturn = `${distance} metros.`;
    }
    return toReturn;
  }
}
