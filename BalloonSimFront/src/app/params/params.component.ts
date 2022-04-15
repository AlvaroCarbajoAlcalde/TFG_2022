import { Component, AfterViewInit } from '@angular/core';
import * as L from 'leaflet';
import { GLOBAL } from '../class/global';
import { kmPerHourToKnots, kmPerHourToMetersPerSecond, metersToFeet } from '../class/methods';
import { Wind } from '../model/winds';

@Component({
  selector: 'app-params',
  templateUrl: './params.component.html',
})
export class ParamsComponent implements AfterViewInit {

  private map!: L.Map;
  private mapWinds!: L.Map;
  public windList!: Wind[];
  public toKnots = kmPerHourToKnots;
  private actColor!: number;
  private readonly colorsWindLines = ['#c0c0c0', '#ff0000', '#ffa500', '#0000ff', '#808000', '#800080', '#ffffff', '#00ff00', '#000080', '#00ffff', '#ff00ff', '#000000', '#008000', '#800000', '#808080', '#ffff00', '#008080'];

  constructor() { }

  async ngAfterViewInit(): Promise<void> {
    await GLOBAL.initGLOBAL();
    this.windList = GLOBAL.Winds.windsList;

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

    const iconRed = L.icon({
      iconRetinaUrl: 'assets/img/marker-red.png',
      iconUrl: 'assets/img/marker-red.png',
      shadowUrl: 'assets/marker-shadow.png',
      iconSize: [25, 41],
      iconAnchor: [12, 41],
      popupAnchor: [1, -34],
      tooltipAnchor: [16, -28],
      shadowSize: [41, 41],
    });

    L.Marker.prototype.options.icon = iconDefault;
    //#endregion

    //Map
    this.map = L.map('map', { center: GLOBAL.MAP_CENTER, zoom: 10 });
    const tiles = L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', { maxZoom: 15, minZoom: 10 });
    tiles.addTo(this.map);

    //#region Markers
    const markers: L.Marker[] = [];

    GLOBAL.TakeoffPointsList.forEach((takeoff) => {
      const marker = L.marker([takeoff.lat, takeoff.lon], { title: takeoff.name, riseOnHover: true });

      //Image
      const img = document.createElement('img');
      img.src = `../../assets/takeoffs/${takeoff.img}`;
      img.style.width = '100%';
      img.alt = takeoff.name;
      img.style.borderRadius = '10px';
      img.style.marginTop = '3px';

      //Marker
      marker.addTo(this.map);
      marker.on('click', () => {
        GLOBAL.SelectedTakeoff = takeoff;
        markers.forEach((element: L.Marker) => {
          element.setIcon(iconDefault);
          element.setZIndexOffset(0);
        });
        marker.setIcon(iconRed);
        marker.setZIndexOffset(100);
        this.updateWindsMap();
      });
      marker.bindPopup(`<b>${takeoff.name}</b><br>${takeoff.description}<br>${img.outerHTML}<br>Lat: ${takeoff.lat},  Lon: ${takeoff.lon}, Alt: ${takeoff.alt}m.`);
      marker.setZIndexOffset(0);
      if (GLOBAL.SelectedTakeoff == takeoff) {
        marker.setIcon(iconRed);
        marker.setZIndexOffset(100);
      }
      markers.push(marker);
    });
    //#endregion

    //Selected skyboxColor
    document.getElementsByClassName(GLOBAL.SkyboxColor)[0].classList.add('selected');

    this.mapWinds = L.map('mapWinds', { center: GLOBAL.MAP_CENTER, zoom: 10 });
    const tiles2 = L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', { maxZoom: 15, minZoom: 10 });
    tiles2.addTo(this.mapWinds);
    this.actColor = 0;
    this.updateWindsMap();
  }

  /**
   * Change skybox color
   */
  public selectSkybox(value: string) {
    const imgs = Array.from(document.getElementsByClassName('skyboximg'));
    imgs.forEach((img) => { img.classList.remove('selected') });
    document.getElementsByClassName(value)[0].classList.add('selected');
    GLOBAL.SkyboxColor = value;
  }

  /**
   * Sets flight name
   * 
   * @param {string} value name of flight
   */
  public setFlightName(value: string) {
    GLOBAL.FlightName = value;
  }

  /**
   * Delete wind with altitude equal to value
   * 
   * @param {number} altitude altitude of wind
   */
  public deleteWind(altitude: number) {
    GLOBAL.Winds.removeWind(altitude);
    this.updateWindsMap();
  }

  /**
   * Adds a new wind to the list
   * 
   * @param {number} altitude altitude of wind
   * @param {number} direction direction of wind
   * @param {number} speed speed of wind
   */
  public addWind(altitude: any, direction: any, speed: any) {
    altitude = Number.parseFloat(altitude);
    direction = Number.parseFloat(direction);
    speed = Number.parseFloat(speed);
    GLOBAL.Winds.addWind(altitude, direction, kmPerHourToMetersPerSecond(speed));
    this.showPopupWinds();
    this.updateWindsMap();
  }

  /**
   * Shows popup of add wind
   */
  public showPopupWinds() {
    Array.from(document.getElementsByClassName("popup_input")).forEach((element: any) => { element.value = "0"; });
    document.getElementById('divAddWind')?.classList.toggle('show');
    document.getElementsByClassName("popup_background")[0]?.classList.toggle('show');
  }

  /**
   * Hide popup of add wind
   */
  public addWindCancel() {
    this.showPopupWinds();
  }

  /**
   * Sets the temperature on ground
   * @param {number} value temperature value
   */
  public setTemperature(value: any) {
    GLOBAL.Temperature = value;
  }

  /**
   * Shows a wind route representing wind speed and direction
   * @param wind wind to show
   */
  public seeWindOnMap(wind: Wind) {
    const kmx = wind.windSpeedKMH * Math.cos(wind.windDir * Math.PI / 180);
    const kmy = wind.windSpeedKMH * Math.sin(wind.windDir * Math.PI / 180);
    const lat = GLOBAL.SelectedTakeoff.lat + kmx / 111.2;
    const lon = GLOBAL.SelectedTakeoff.lon + kmy / (111.2 * Math.cos(GLOBAL.SelectedTakeoff.lat * Math.PI / 180));

    const route = L.polyline([[GLOBAL.SelectedTakeoff.lat, GLOBAL.SelectedTakeoff.lon], [lat, lon]], { color: wind.color, weight: 3 });
    route.bindPopup(`<b>Altitud: ${wind.altitude.toFixed(0)} m / ${metersToFeet(wind.altitude).toFixed(0)} feet</b><br>Dirección: ${wind.windDir.toFixed(2)}°<br>Velocidad: ${wind.windSpeedKMH} km/h / ${this.toKnots(wind.windSpeedKMH).toFixed(2)} nudos.<br>`);
    route.addTo(this.mapWinds);
  }

  /**
   * Changes wind visibility on map
   * @param wind the wind
   */
  public changeWindVisibility(wind: Wind) {
    wind.seeOnMap = !wind.seeOnMap;
    this.updateWindsMap();
  }

  /**
   * Updates the winds map
   */
  private updateWindsMap() {
    //Remove previous winds
    this.mapWinds.eachLayer((layer: any) => { if (layer.options.color) this.mapWinds.removeLayer(layer) });

    //Add winds
    GLOBAL.Winds.windsList.forEach((wind: Wind) => {
      if (!wind.color) {
        wind.color = this.colorsWindLines[this.actColor];
        this.actColor++;
        if (this.actColor >= this.colorsWindLines.length) this.actColor = 0;
      }
      if (wind.seeOnMap) this.seeWindOnMap(wind);
    });
    const marker = L.circleMarker([0, 0], { radius: 5, color: 'red', fillColor: 'black', fillOpacity: 1 });
    marker.addTo(this.mapWinds);
    marker.setLatLng([GLOBAL.SelectedTakeoff.lat, GLOBAL.SelectedTakeoff.lon]);
    this.mapWinds.panTo([GLOBAL.SelectedTakeoff.lat, GLOBAL.SelectedTakeoff.lon]);
  }

  /**
   * Changes wind color
   * 
   * @param {Wind} wind the wind to change
   * @param {string} color color with which the wind will be changed
   */
  public changeWindColor(wind: Wind, color: string) {
    wind.color = color;
    this.updateWindsMap();
  }
}
