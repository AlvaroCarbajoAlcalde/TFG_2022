import { Component, OnInit, AfterViewInit } from '@angular/core';
import { Router } from '@angular/router';
import RequestController from '../class/requestController';
import takeoffController from '../class/takeoffController';
import * as L from 'leaflet';
import Takeoff from '../model/takeoff';

@Component({
  selector: 'app-params',
  templateUrl: './params.component.html',
})
export class ParamsComponent implements OnInit, AfterViewInit {
  private map!: L.Map;

  constructor(private router: Router) {}

  ngOnInit() {}

  async ngAfterViewInit(): Promise<void> {
    //#region MarkerShadow
    const iconRetinaUrl = 'assets/marker-icon-2x.png';
    const iconUrl = 'assets/marker-icon.png';
    const shadowUrl = 'assets/marker-shadow.png';
    const iconDefault = L.icon({
      iconRetinaUrl,
      iconUrl,
      shadowUrl,
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
    const takeoffsDiv = document.getElementById('takeoffs-container');
    if (takeoffsDiv) {
      takeoffs.forEach((takeoff) => {
        const marker = L.marker([takeoff.lat, takeoff.lon], {
          title: takeoff.name,
          riseOnHover: true,
        });
        marker
          .addTo(this.map)
          .on('click', () => {
            takeoffController.selectedTakeoff = takeoff;
          })
          .bindPopup(this.setMarkerPopup(takeoff))
          .openPopup();
      });
      //#endregion
    }
  }

  private setMarkerPopup(takeoff: Takeoff): string {
    let toReturn = `${takeoff.name}<br>${takeoff.description}`;
    return toReturn;
  }
}
