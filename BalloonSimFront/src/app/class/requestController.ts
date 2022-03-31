import { environment } from 'src/environments/environment';
import Flight from '../model/flight';
import Takeoff from '../model/takeoff';
import Track from '../model/track';

export default class RequestController {

  public static async getTakeOffs(): Promise<Takeoff[]> {
    const toReturn: Takeoff[] = [];
    await fetch(`${environment.apiRoute}takeoffs`)
      .then((response) => response.json())
      .then((takeoffs) => {
        takeoffs = Object.values(takeoffs);
        takeoffs.forEach((element: any) => {
          toReturn.push(new Takeoff(element));
        });
      });
    return toReturn;
  }

  public static async startFlight(
    takeoff: string,
    name: string = 'undefined'
  ): Promise<number> {
    let toReturn: number = 0;
    await fetch(`${environment.apiRoute}newflight/${name}/${takeoff}`)
      .then((response) => response.json())
      .then((id) => {
        toReturn = id;
      });
    return toReturn;
  }

  public static savePoint(
    flight: number,
    s: number,
    lat: number,
    lon: number,
    alt: number
  ) {
    fetch(
      `${environment.apiRoute}newpoint/${flight}/${s}/${lat}/${lon}/${alt}`
    );
  }

  public static async getFlights(searchFor = '*'): Promise<Flight[]> {
    const toReturn: Flight[] = [];
    let no = 1;
    await fetch(`${environment.apiRoute}flights/${searchFor}`)
      .then((response) => response.json())
      .then((flights) => {
        flights = Object.values(flights);
        flights.forEach((element: any) => {
          element.no = no++;
          toReturn.push(new Flight(element));
        });
      });
    return toReturn;
  }

  public static async getFlight(id: number): Promise<Flight> {
    let toReturn!: Flight;
    await fetch(`${environment.apiRoute}flight/${id}`)
      .then((response) => response.json())
      .then((element) => {
        toReturn = new Flight(element);
      });
    return toReturn;
  }

  public static async getRoute(flightId: number): Promise<Track[]> {
    const toReturn: Track[] = [];
    await fetch(`${environment.apiRoute}routes/${flightId}`)
      .then((response) => response.json())
      .then((tracks) => {
        tracks = Object.values(tracks);
        tracks.forEach((element: any) => {
          toReturn.push(new Track(element));
        });
      });
    return toReturn;
  }

  public static async getWinds() {
    let toReturn = null;

    const myHeaders = new Headers();
    myHeaders.append("Content-Type", "application/json");

    const raw = JSON.stringify({
      "lat": 42.54,
      "lon": -2.96,
      "model": "gfs",
      "parameters": [
        "wind"
      ],
      "levels": [
        "surface",
        "1000h",
        "950h",
        "925h",
        "900h",
        "850h",
        "800h",
        "700h",
        "600h",
        "500h",
        "400h",
        "300h",
        "200h",
        "150h"
      ],
      "key": environment.windyKey
    });

    const requestOptions = {
      method: 'POST',
      headers: myHeaders,
      body: raw
    };

    await fetch("https://api.windy.com/api/point-forecast/v2", requestOptions as any)
      .then(response => response.json())
      .then((result) => { toReturn = result; });
    return toReturn;
  }
}
