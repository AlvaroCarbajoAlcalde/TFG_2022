import { Component, AfterViewInit } from '@angular/core';
import * as L from 'leaflet';
import { GLOBAL } from '../class/global';
import { kmPerHourToKnots, kmPerHourToMetersPerSecond, metersToFeet } from '../class/methods';
import { Wind } from '../model/winds';
import { faEye, faTrash } from '@fortawesome/free-solid-svg-icons';
import { WindsMap } from '../class/windsMap';

@Component({
  selector: 'app-params',
  templateUrl: './params.component.html',
})
export class ParamsComponent implements AfterViewInit {

  private map!: L.Map;
  public windList!: Wind[];
  public toKnots = kmPerHourToKnots;
  public eyeIcon = faEye;
  public trashIcon = faTrash;
  public windsMap!: WindsMap;

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
        this.windsMap.changeCenter([takeoff.lat, takeoff.lon]);
        this.windsMap.updateWindsMap();
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

    //WindsMap
    this.windsMap = new WindsMap('mapWinds', GLOBAL.Winds.windsList, [GLOBAL.SelectedTakeoff.lat, GLOBAL.SelectedTakeoff.lon]);
    this.windsMap.updateWindsMap();
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
    this.windsMap.updateWindsMap();
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
    this.windsMap.updateWindsMap();
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
}
