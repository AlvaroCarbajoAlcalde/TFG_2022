import { AfterViewInit, Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import * as L from 'leaflet';
import RequestController from '../class/requestController';
import Flight from '../model/flight';
import { Chart } from 'chart.js';
import { distanceToString, kmPerHourToKnots, timeInSecondsToString } from '../class/methods';
import { Wind } from '../model/winds';
import Weather from '../model/weather';

@Component({
  selector: 'app-flightview',
  templateUrl: './flightview.component.html',
})
export class FlightviewComponent implements OnInit, AfterViewInit {
  private flightid!: number;
  private map!: L.Map;
  public flight!: Flight;
  public distance!: number;
  public maxSpeed!: number;
  public maxSpeedY!: number;
  public minSpeedY!: number;
  public maxAltitude!: number;
  public minAltitude!: number;
  public avgAltitude!: number;
  public takeoffAltitude!: number;
  public windList!: Wind[];
  public remainingFuel!: number;
  public straightLineDistance!: number;
  public weather!: Weather;
  public toKnots = kmPerHourToKnots;
  public distanceToString = distanceToString;

  constructor(private _Activatedroute: ActivatedRoute, private router: Router) { }

  ngOnInit(): void {
    if (this._Activatedroute.snapshot.paramMap.get('id') == null) this.router.navigate(['history']);
    else this.flightid = parseInt(<string>this._Activatedroute.snapshot.paramMap.get('id'));
  }

  async ngAfterViewInit(): Promise<void> {
    try {
      this.flight = await RequestController.getFlight(this.flightid);
    } catch (error) {
      //if the flight doesn't exist, redirect to the history page
      this.router.navigate(['history']);
      return;
    }

    (<HTMLElement>document.getElementById('flightname')).innerHTML = this.flight.name;

    //Marker Icon
    L.Marker.prototype.options.icon = L.icon({
      iconRetinaUrl: 'assets/img/marker-blue.png',
      iconUrl: 'assets/img/marker-blue.png',
      shadowUrl: 'assets/marker-shadow.png',
      iconSize: [25, 41],
      iconAnchor: [12, 41],
      popupAnchor: [1, -34],
      tooltipAnchor: [16, -28],
      shadowSize: [41, 41],
    });

    //Map
    this.map = L.map('map', { center: [42.53, -2.85], zoom: 12 });
    const tiles = L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', { maxZoom: 16, minZoom: 10 });
    tiles.addTo(this.map);

    //Tracking
    const track = new L.Polyline([], {
      color: 'red',
      weight: 3,
      opacity: 0.7,
      smoothFactor: 0,
      interactive: true,
    });
    track.addTo(this.map);

    const routes = await RequestController.getRoute(this.flightid);

    const takeoffMarker = L.circleMarker(new L.LatLng(routes[0].lat, routes[0].lon), {
      radius: 5,
      color: 'red',
      fillColor: 'white',
      fill: true,
      fillOpacity: 1,
    });
    takeoffMarker.addTo(this.map);

    this.map.panTo(new L.LatLng(routes[0].lat, routes[0].lon));

    //Foreach route
    this.maxSpeed = 0;
    this.maxSpeedY = 0;
    this.minSpeedY = 0;
    this.maxAltitude = 0;
    this.minAltitude = routes[0].altitude;
    this.takeoffAltitude = routes[0].altitude;
    this.distance = 0;
    this.remainingFuel = routes[routes.length - 1].fuel;
    const firstLatLng = new L.LatLng(routes[0].lat, routes[0].lon);
    const lastLatLng = new L.LatLng(routes[routes.length - 1].lat, routes[routes.length - 1].lon);
    this.straightLineDistance = firstLatLng.distanceTo(lastLatLng);
    let previousLatlng = new L.LatLng(routes[0].lat, routes[0].lon);
    let sumAltitude = 0;
    const labelSeconds: string[] = [];
    const dataAltitude: number[] = [];
    const dataFuel: number[] = [];
    const dataSpeed: number[] = [];
    const dataDirection: number[] = [];
    const dataSpeedY: number[] = [];

    routes.forEach((point) => {
      if (point.altitude > this.maxAltitude) this.maxAltitude = point.altitude;
      if (point.altitude < this.minAltitude) this.minAltitude = point.altitude;
      if (point.speed > this.maxSpeed) this.maxSpeed = point.speed;
      if (point.speedy > this.maxSpeedY) this.maxSpeedY = point.speedy;
      if (point.speedy < this.minSpeedY) this.minSpeedY = point.speedy;
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
      sumAltitude += point.altitude;
    });

    this.avgAltitude = sumAltitude / routes.length;
    this.distance = parseFloat(this.distance.toFixed(2));
    this.createGraphicData(labelSeconds, dataAltitude, dataFuel, dataSpeed, dataDirection, dataSpeedY);

    this.windList = await RequestController.getFlightWinds(this.flightid);
    this.weather = await RequestController.getFlightWeather(this.flightid) as Weather;
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
  public createGraphicData(labels: string[], dataAltitude: number[], dataFuel: number[], dataSpeed: number[], dataDirection: number[], dataSpeedY: number[]): void {
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
