import { environment } from 'src/environments/environment';
import Flight from '../model/flight';
import Takeoff from '../model/takeoff';

export default class RequestController {
  public static async getTakeOffs(): Promise<Takeoff[]> {
    const toReturn: Takeoff[] = [];
    await fetch(`${environment.apiRoute}takeoffs`)
      .then((response) => response.json())
      .then((takeoffs) => {
        takeoffs.forEach((element: any) => {
          toReturn.push(new Takeoff(element));
        });
      });
    return toReturn;
  }

  public static async startFlight(user: string = 'anon'): Promise<number> {
    let toReturn: number = 0;
    await fetch(`${environment.apiRoute}newflight/${user}`)
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

  public static async getFlights(user: string | null): Promise<Flight[]> {
    const toReturn: Flight[] = [];
    let no = 0;
    let url: string;
    if (user != 'anon') url = `${environment.apiRoute}flights\\${user}`;
    else url = `${environment.apiRoute}flights`;
    await fetch(url)
      .then((response) => response.json())
      .then((flights) => {
        flights.forEach((element: any) => {
          element.no = no++;
          toReturn.push(new Flight(element));
        });
      });
    return toReturn;
  }
}
