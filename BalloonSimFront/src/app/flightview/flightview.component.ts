import { AfterViewInit, Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import * as L from 'leaflet';
import RequestController from '../class/requestController';
import Flight from '../model/flight';
import { Chart } from 'chart.js';
import { distanceToString, kmPerHourToKnots, metersPerSecondToKmPerHour, metersToFeet, timeInSecondsToString } from '../class/methods';
import { Wind } from '../model/winds';
import Weather from '../model/weather';
import { faEye, faFileExport } from '@fortawesome/free-solid-svg-icons';
import { WindsMap } from '../class/windsMap';
import { GLOBAL } from '../class/global';
import { COLORS } from '../class/colors';
import Track from '../model/track';

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
  public toKmPerHour = metersPerSecondToKmPerHour;
  public toFeet = metersToFeet;
  public eyeIcon = faEye;
  public exportIcon = faFileExport;
  public windsMap!: WindsMap;
  public routes!: Track[];

  constructor(private _Activatedroute: ActivatedRoute, private router: Router) { }

  ngOnInit(): void {
    //Get the id from the url
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

    if (document.getElementById('flightname'))
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
      color: COLORS.red,
      weight: 3,
      opacity: 1,
      smoothFactor: 0,
      interactive: true,
    });
    track.addTo(this.map);

    this.routes = await RequestController.getRoute(this.flightid);

    //Takeoff marker
    const takeoffMarker = L.circleMarker(new L.LatLng(this.routes[0].lat, this.routes[0].lon), {
      radius: 5,
      color: COLORS.red,
      fillColor: 'white',
      fill: true,
      fillOpacity: 1,
    });
    takeoffMarker.addTo(this.map);

    this.map.panTo(new L.LatLng(this.routes[0].lat, this.routes[0].lon));

    //Foreach route
    this.maxSpeed = 0;
    this.maxSpeedY = 0;
    this.minSpeedY = 0;
    this.maxAltitude = 0;
    this.minAltitude = this.routes[0].altitude;
    this.takeoffAltitude = this.routes[0].altitude;
    this.distance = 0;
    this.remainingFuel = this.routes[this.routes.length - 1].fuel;
    const firstLatLng = new L.LatLng(this.routes[0].lat, this.routes[0].lon);
    const lastLatLng = new L.LatLng(this.routes[this.routes.length - 1].lat, this.routes[this.routes.length - 1].lon);
    this.straightLineDistance = firstLatLng.distanceTo(lastLatLng);
    let previousLatlng = new L.LatLng(this.routes[0].lat, this.routes[0].lon);
    let sumAltitude = 0;
    const labelSeconds: string[] = [];
    const dataAltitude: number[] = [];
    const dataFuel: number[] = [];
    const dataSpeed: number[] = [];
    const dataDirection: number[] = [];
    const dataSpeedY: number[] = [];

    this.routes.forEach((point) => {
      if (point.altitude > this.maxAltitude) this.maxAltitude = point.altitude;
      if (point.altitude < this.minAltitude) this.minAltitude = point.altitude;
      if (point.speed > this.maxSpeed) this.maxSpeed = point.speed;
      if (point.speedy > this.maxSpeedY) this.maxSpeedY = point.speedy;
      if (point.speedy < this.minSpeedY) this.minSpeedY = point.speedy;
      labelSeconds.push(timeInSecondsToString(point.seconds, true));
      dataAltitude.push(point.altitude);
      dataFuel.push(point.fuel);
      dataSpeed.push(metersPerSecondToKmPerHour(point.speed));
      dataDirection.push(point.direction);
      dataSpeedY.push(point.speedy);
      const latlng = new L.LatLng(point.lat, point.lon);
      this.distance += latlng.distanceTo(previousLatlng);
      track.addLatLng(latlng);
      previousLatlng = latlng;
      sumAltitude += point.altitude;
    });

    this.avgAltitude = sumAltitude / this.routes.length;
    this.distance = parseFloat(this.distance.toFixed(2));
    this.createGraphicData(labelSeconds, dataAltitude, dataFuel, dataSpeed, dataDirection, dataSpeedY);

    this.windList = await RequestController.getFlightWinds(this.flightid);
    this.weather = await RequestController.getFlightWeather(this.flightid) as Weather;

    this.windsMap = new WindsMap("mapWinds", this.windList, [this.routes[0].lat, this.routes[0].lon]);
    this.windsMap.updateWindsMap();
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
            borderColor: COLORS.red,
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

  /**
   * Export settings to file in JSON format
   */
  public async exportSettings() {
    const takeoffs = await RequestController.getTakeOffs();
    const takeoff = takeoffs.find((t) => t.name === this.flight.takeoff);

    const settings = {
      "FlightName": this.flight.name,
      "Temperature": this.weather.temperature,
      "Takeoff": takeoff,
      "Winds": this.windList,
      "SkyboxColor": GLOBAL.getRandomSkybox()
    }

    const blob = new Blob([JSON.stringify(settings)], { type: "application/json" });
    const url = window.URL.createObjectURL(blob);
    const a = document.createElement("a");
    a.href = url;
    a.download = `ajustes_vuelo_${this.flight.name.replace(' ', '-')}.json`;
    a.click();
  }

  /**
   * Navigates to flight review
   */
  public reviewFlight() {
    this.router.navigate([`flight-review/${this.flightid}`]);
  }
}
