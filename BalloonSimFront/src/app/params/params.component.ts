import { Component, AfterViewInit } from '@angular/core';
import * as L from 'leaflet';
import { GLOBAL } from '../class/global';
import { Wind } from '../model/winds';

@Component({
  selector: 'app-params',
  templateUrl: './params.component.html',
})
export class ParamsComponent implements AfterViewInit {

  private map!: L.Map;
  public windList!: Wind[];

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

    //#region Map
    this.map = L.map('map', {
      center: GLOBAL.MAP_CENTER,
      zoom: 10,
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

    //#region Markers
    const markers: L.Marker[] = [];

    GLOBAL.TakeoffPointsList.forEach((takeoff) => {
      const marker = L.marker([takeoff.lat, takeoff.lon], {
        title: takeoff.name,
        riseOnHover: true,
      });

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
  }

  public selectSkybox(value: string) {
    const imgs = Array.from(document.getElementsByClassName('skyboximg'));
    imgs.forEach((img) => { img.classList.remove('selected'); });
    document.getElementsByClassName(value)[0].classList.add('selected');
    GLOBAL.SkyboxColor = value;
  }

  public setFlightName(value: string) {
    GLOBAL.FlightName = value;
  }

  public deleteWind(altitude: number){
    GLOBAL.Winds.removeWind(altitude);
  }
}
