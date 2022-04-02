import { Component, AfterViewInit } from '@angular/core';
import * as L from 'leaflet';
import { GLOBAL } from '../class/global';

@Component({
  selector: 'app-params',
  templateUrl: './params.component.html',
})
export class ParamsComponent implements AfterViewInit {

  private map!: L.Map;

  constructor() { }

  async ngAfterViewInit(): Promise<void> {
    await GLOBAL.initGLOBAL();

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
      marker
        .addTo(this.map)
        .on('click', () => {
          GLOBAL.SelectedTakeoff = takeoff;
          markers.forEach((element: L.Marker) => {
            element.setIcon(iconDefault);
            element.setZIndexOffset(0);
          });
          marker.setIcon(iconRed);
          marker.setZIndexOffset(100);
        })
        .bindPopup(`<b>${takeoff.name}</b><br>${takeoff.description}`)
        .setZIndexOffset(0);
      markers.push(marker);
    });
    //#endregion
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
}
