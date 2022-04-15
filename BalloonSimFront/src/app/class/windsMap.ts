import * as L from "leaflet";
import { Wind } from "../model/winds";
import { GLOBAL } from "./global";
import { kmPerHourToKnots, metersToFeet } from "./methods";


export class WindsMap {

    private map: L.Map;
    private actColor!: number;
    private readonly colorsWindLines = ['#c0c0c0', '#ff0000', '#ffa500', '#0000ff', '#808000', '#800080', '#00ff00', '#000080', '#00ffff', '#ff00ff', '#008000', '#800000', '#808080', '#ffff00', '#008080', '#000000', '#ffffff'];
    private windsList!: Wind[];
    private center!: L.LatLngTuple;

    /**
     * Initializes the map
     * @param {string} mapId the id of the HTML element where the map will be shown
     * @param {Wind[]} windList list of winds to show
     * @param {L.LatLngTuple} center center of the map
     */
    constructor(mapId: string, windList: Wind[], center: L.LatLngTuple) {
        this.center = center;
        this.windsList = windList;
        this.map = L.map(mapId, { center: GLOBAL.MAP_CENTER, zoom: 10 });
        const tiles = L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', { maxZoom: 15, minZoom: 10 });
        tiles.addTo(this.map);
        this.actColor = 0;
        this.map.panTo(this.center);
    }

    /**
     * Changes the center of the map
     * @param {L.LatLngTuple} newCenter new center of the map
     */
    public changeCenter(newCenter: L.LatLngTuple) {
        this.center = newCenter;
        this.map.panTo(this.center);
    }

    /**
     * Changes wind visibility on map
     * @param wind the wind
     */
    public changeWindVisibility(wind: Wind, htmlEye: Element | null) {
        htmlEye?.classList.toggle('pressed');
        wind.seeOnMap = !wind.seeOnMap;
        this.updateWindsMap();
    }

    /**
     * Updates the winds map
     */
    public updateWindsMap() {
        //Remove previous winds
        this.map.eachLayer((layer: any) => { if (layer.options.color) this.map.removeLayer(layer) });

        //Add winds
        this.windsList.forEach((wind: Wind) => {
            if (!wind.color) {
                wind.color = this.colorsWindLines[this.actColor];
                this.actColor++;
                if (this.actColor >= this.colorsWindLines.length) this.actColor = 0;
            }
            if (wind.seeOnMap) this.seeWindOnMap(wind);
        });
        const marker = L.circleMarker([0, 0], { radius: 5, color: 'red', fillColor: 'black', fillOpacity: 1 });
        marker.addTo(this.map);
        marker.setLatLng(this.center);
    }

    /**
     * Shows a wind route representing wind speed and direction
     * @param {Wind} wind wind to show
     */
    private seeWindOnMap(wind: Wind) {
        const kmx = wind.windSpeedKMH * Math.cos(wind.windDir * Math.PI / 180);
        const kmy = wind.windSpeedKMH * Math.sin(wind.windDir * Math.PI / 180);
        const lat = this.center[0] + kmx / 111.2;
        const lon = this.center[1] + kmy / (111.2 * Math.cos(this.center[0] * Math.PI / 180));

        const route = L.polyline([[this.center[0], this.center[1]], [lat, lon]], { color: wind.color, weight: 3 });
        route.bindPopup(`<b>Altitud: ${wind.altitude.toFixed(0)} m / ${metersToFeet(wind.altitude).toFixed(0)} feet</b><br>Dirección: ${wind.windDir.toFixed(2)}°<br>Velocidad: ${wind.windSpeedKMH} km/h / ${kmPerHourToKnots(wind.windSpeedKMH).toFixed(2)} nudos.<br>`);
        route.addTo(this.map);
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


