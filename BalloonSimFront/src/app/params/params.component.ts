import { Component, OnInit, AfterViewInit } from '@angular/core';
import { Router } from '@angular/router';
import RequestController from '../class/requestController';
import takeoffController from '../class/takeoffController';
import * as L from 'leaflet';

@Component({
  selector: 'app-params',
  templateUrl: './params.component.html',
})
export class ParamsComponent implements OnInit, AfterViewInit {
  private map!: L.Map;

  constructor(private router: Router) {}

  ngOnInit() {}

  async ngAfterViewInit(): Promise<void> {
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

    //#region Markers
    const takeoffs = await RequestController.getTakeOffs();
    const markers: L.Marker[] = [];

    takeoffs.forEach((takeoff) => {
      const marker = L.marker([takeoff.lat, takeoff.lon], {
        title: takeoff.name,
        riseOnHover: true,
      });
      marker
        .addTo(this.map)
        .on('click', () => {
          takeoffController.selectedTakeoff = takeoff;
          markers.forEach((element: L.Marker) => {
            element.setIcon(iconDefault);
          });
          marker.setIcon(iconRed);
        })
        .bindPopup(`<b>${takeoff.name}</b><br>${takeoff.description}`);
      markers.push(marker);
    });
    //#endregion
  }
}
