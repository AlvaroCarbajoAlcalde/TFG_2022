import { AfterViewInit, Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import * as L from 'leaflet';
import { GLOBAL } from '../class/global';
import RequestController from '../class/requestController';
import Flight from '../model/flight';
import { NgChartsModule } from 'ng2-charts';
import { Chart, ChartOptions, ChartType } from 'chart.js';
import { timeInSecondsToString } from '../class/methods';

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

    //Foreach route
    this.distance = 0.0;
    let previousLatlng = new L.LatLng(routes[0].lat, routes[0].lon);
    const labelSeconds: string[] = [];
    const dataAltitude: number[] = [];
    const dataFuel: number[] = [];
    const dataSpeed: number[] = [];
    const dataDirection: number[] = [];
    const dataSpeedY: number[] = [];
    routes.forEach((point) => {
      labelSeconds.push(timeInSecondsToString(point.seconds, true));
      dataAltitude.push(point.altitude);
      dataFuel.push(point.fuel);
      dataSpeed.push(point.speed * 3.6);
      dataDirection.push(point.direction);
      dataSpeedY.push(point.speedy);
      const latlng = new L.LatLng(point.lat, point.lon);
      this.distance += latlng.distanceTo(previousLatlng);
      track.addLatLng(latlng);
      previousLatlng = latlng;
    });
    this.distance = parseFloat(this.distance.toFixed(2));
    this.createGraphicAltitude(labelSeconds, dataAltitude, dataFuel, dataSpeed, dataDirection, dataSpeedY);
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

  /**
   * Creates a graphic with the altitude of the flight
   * 
   * @param {string} labels labels for the chart, seconds
   * @param {number} dataAltitude altitude of the flight
   * @param {number} dataFuel fuel remaining
   * @param {number} dataSpeed speed of the balloon
   * @param {number} dataDirection direction of the balloon
   * @param {number} dataSpeedY speed in Y, ascension speed
   * @returns {void}
   */
  public createGraphicAltitude(labels: string[], dataAltitude: number[], dataFuel: number[], dataSpeed: number[], dataDirection: number[], dataSpeedY: number[]): void {
    new Chart(document.getElementById('graphicAltitude') as HTMLCanvasElement, {
      type: 'line',
      data: {
        labels: labels,
        datasets: [
          {
            label: 'Altitud (m s.n.m)',
            data: dataAltitude,
            borderColor: 'red',
            pointBorderWidth: 0,
            pointStyle: 'line',
          },
          {
            label: 'Combustible (%)',
            data: dataFuel,
            borderColor: 'blue',
            pointBorderWidth: 0,
            pointStyle: 'line',
          },
          {
            label: 'Velocidad (km/h)',
            data: dataSpeed,
            borderColor: 'green',
            pointBorderWidth: 0,
            pointStyle: 'line',
          },
          {
            label: 'Dirección (grados)',
            data: dataDirection,
            borderColor: 'purple',
            pointBorderWidth: 0,
            pointStyle: 'line',
          },
          {
            label: 'Velocidad de ascenso (m/s)',
            data: dataSpeedY,
            borderColor: 'orange',
            pointBorderWidth: 0,
            pointStyle: 'line',
          }
        ]
      },
      options: {
        scales: { y: { beginAtZero: true } }
      }
    });
  }
}
