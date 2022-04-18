import { Component, AfterViewInit } from '@angular/core';
import * as L from 'leaflet';
import { GLOBAL } from '../class/global';
import { kmPerHourToKnots, kmPerHourToMetersPerSecond, metersToFeet } from '../class/methods';
import { Wind } from '../model/winds';
import { faEye, faTrash, faPlus, faFileImport, faFileExport } from '@fortawesome/free-solid-svg-icons';
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
  public plusIcon = faPlus;
  public importIcon = faFileImport;
  public exportIcon = faFileExport;
  public windsMap!: WindsMap;
  private markers!: L.Marker[];
  private defaultMapIcon!: L.Icon;
  private redMapIcon!: L.Icon;

  constructor() { }

  async ngAfterViewInit(): Promise<void> {
    await GLOBAL.initGLOBAL();
    this.windList = GLOBAL.Winds.windsList;

    //#region MarkerIcons
    this.defaultMapIcon = L.icon({
      iconRetinaUrl: 'assets/img/marker-blue.png',
      iconUrl: 'assets/img/marker-blue.png',
      shadowUrl: 'assets/marker-shadow.png',
      iconSize: [25, 41],
      iconAnchor: [12, 41],
      popupAnchor: [1, -34],
      tooltipAnchor: [16, -28],
      shadowSize: [41, 41],
    });

    this.redMapIcon = L.icon({
      iconRetinaUrl: 'assets/img/marker-red.png',
      iconUrl: 'assets/img/marker-red.png',
      shadowUrl: 'assets/marker-shadow.png',
      iconSize: [25, 41],
      iconAnchor: [12, 41],
      popupAnchor: [1, -34],
      tooltipAnchor: [16, -28],
      shadowSize: [41, 41],
    });

    L.Marker.prototype.options.icon = this.defaultMapIcon;
    //#endregion

    //Map
    this.map = L.map('map', { center: GLOBAL.MAP_CENTER, zoom: 10 });
    const tiles = L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', { maxZoom: 15, minZoom: 10 });
    tiles.addTo(this.map);

    //#region Markers
    this.markers = [];

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
        this.markers.forEach((element: L.Marker) => {
          element.setIcon(this.defaultMapIcon);
          element.setZIndexOffset(0);
        });
        marker.setIcon(this.redMapIcon);
        marker.setZIndexOffset(100);
        this.windsMap.changeCenter([takeoff.lat, takeoff.lon]);
        this.windsMap.updateWindsMap();
      });
      marker.bindPopup(`<b>${takeoff.name}</b><br>${takeoff.description}<br>${img.outerHTML}<br>Lat: ${takeoff.lat},  Lon: ${takeoff.lon}<br> Alt: ${takeoff.alt}m / ${Math.round(metersToFeet(takeoff.alt))} feet.`);
      marker.setZIndexOffset(0);
      if (GLOBAL.SelectedTakeoff == takeoff) {
        marker.setIcon(this.redMapIcon);
        marker.setZIndexOffset(100);
      }
      this.markers.push(marker);
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

  /**
   * Export settings to file
   */
  public exportSettings() {
    const settings = {
      "FlightName": GLOBAL.FlightName,
      "Temperature": GLOBAL.Temperature,
      "Takeoff": GLOBAL.SelectedTakeoff,
      "Winds": GLOBAL.Winds.windsList,
      "SkyboxColor": GLOBAL.SkyboxColor
    }
    const blob = new Blob([JSON.stringify(settings)], { type: "application/json" });
    const url = window.URL.createObjectURL(blob);
    const a = document.createElement("a");
    a.href = url;
    a.download = `ajustes_vuelo_${GLOBAL.FlightName.replace(' ', '-')}.json`;
    a.click();
  }

  /**
   * Import settings from file
   */
  public importSettings() {
    const input = document.createElement('input');
    input.type = 'file';
    input.accept = '.json';

    //On change
    input.onchange = () => {

      const reader = new FileReader();
      const file = input.files ? input.files[0] : null;
      
      //Verify file is json
      if (file?.name.toLowerCase().split('.').pop() != 'json') {
        alert('El archivo no es un archivo json');
        return;
      }

      reader.onload = () => {
        let settings;
        try {
          settings = JSON.parse(reader.result as string);
        } catch (e) {
          alert('Error al leer el archivo');
          return;
        }

        this.verifySettings(settings);

        //Set global values
        GLOBAL.FlightName = settings.FlightName;
        GLOBAL.Temperature = settings.Temperature;
        GLOBAL.SelectedTakeoff = settings.Takeoff;
        GLOBAL.SkyboxColor = settings.SkyboxColor;
        GLOBAL.Winds.windsList = settings.Winds;

        //Update markers
        this.markers.forEach((marker: L.Marker) => {
          marker.setIcon(this.defaultMapIcon);
          marker.setZIndexOffset(0);
          if (marker.options.title == GLOBAL.SelectedTakeoff.name) {
            marker.setIcon(this.redMapIcon);
            marker.setZIndexOffset(100);
          }
        });
        this.map.panTo([GLOBAL.SelectedTakeoff.lat, GLOBAL.SelectedTakeoff.lon]);

        //Update selected skybox element
        this.selectSkybox(settings.SkyboxColor);

        //Update windsMap
        this.windList = GLOBAL.Winds.windsList;
        this.windsMap.changeWindsList(GLOBAL.Winds.windsList);
        this.windsMap.changeCenter([GLOBAL.SelectedTakeoff.lat, GLOBAL.SelectedTakeoff.lon]);

        //Update inputs
        (<HTMLInputElement>document.getElementsByName('name')[0]).value = GLOBAL.FlightName;
        (<HTMLInputElement>document.getElementsByName('temperature')[0]).value = `${GLOBAL.Temperature}`;
      };

      if (file) reader.readAsText(file);
    }
    input.click();
  }

  /**
   * Verify settings json file
   * @param {any} settings settings to verify on json file
   */
  public verifySettings(settings: any) {
    if (!settings.FlightName) {
      alert('El nombre del vuelo no puede estar vacío');
      return;
    }
    if (!settings.Takeoff) {
      alert('El punto de aterrizaje no puede estar vacío');
      return;
    }
    if (!settings.Winds) {
      alert('La lista de vientos no puede estar vacía');
      return;
    }
    if (!settings.SkyboxColor) {
      alert('El color del cielo no puede estar vacío');
      return;
    }
    if (!settings.Temperature) {
      alert('La temperatura no puede estar vacía');
      return;
    }

    settings.Winds.forEach((wind: Wind) => {
      if (typeof wind.altitude != 'number' || typeof wind.direction != 'number' || typeof wind.speed != 'number') {
        alert('La altitud de los vientos no puede estar vacía');
        return;
      }
    });
  }
}
