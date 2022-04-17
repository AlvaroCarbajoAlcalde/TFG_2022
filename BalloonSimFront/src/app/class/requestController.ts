import { environment } from 'src/environments/environment';
import Flight from '../model/flight';
import Takeoff from '../model/takeoff';
import Track from '../model/track';
import Weather from '../model/weather';
import Winds, { Wind } from '../model/winds';
import { GLOBAL } from './global';

export default class RequestController {

  /**
   * Get the takeoff list
   * 
   * @returns {Promise<Takeoff[]>}
   */
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

  /**
   * Start a new flight and return the id
   *  
   * @param {string} takeoff the takeoff name 
   * @param {string} name name of the flight
   * @returns {Promise<Flight>} id of the flight
   */
  public static async startFlight(takeoff: string, name: string): Promise<number> {
    let toReturn: number = 0;
    await fetch(`${environment.apiRoute}newflight/${name}/${takeoff}`)
      .then((response) => response.json())
      .then((id) => {
        toReturn = id;
      });
    return toReturn;
  }

  /**
   * Saves a point of the route
   * 
   * @param {number} flight id of the flight
   * @param {number} s seconds since the start of the flight
   * @param {number} lat latitude
   * @param {number} lon longitude
   * @param {number} alt altitude
   * @param {number} sp speed in m/s
   * @param {number} spy speed in y direction in m/s
   * @param {number} dir direction in degrees
   * @param {number} fuel fuel in %
   */
  public static savePoint(flight: number, s: number, lat: number, lon: number, alt: number, sp: number, spy: number, dir: number, fuel: number) {
    fetch(`${environment.apiRoute}newpoint/${flight}/${s}/${lat}/${lon}/${alt}/${sp}/${spy}/${dir}/${fuel}`);
  }

  /**
   * Gets the flight list
   * 
   * @param {string} searchFor parameter to search for, default is all
   * @returns {Promise<Flight[]>} List of flights
   */
  public static async getFlights(searchFor: string = "*"): Promise<Flight[]> {
    const toReturn: Flight[] = [];
    let no = 1;
    if (searchFor == '') searchFor = '*';
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

  /**
   * Get the flight with the given id
   * 
   * @param {number} id id of the flight
   * @returns {Promise<Flight>} flight
   */
  public static async getFlight(id: number): Promise<Flight> {
    let toReturn!: Flight;
    await fetch(`${environment.apiRoute}flight/${id}`)
      .then((response) => response.json())
      .then((element) => {
        toReturn = new Flight(element);
      });
    return toReturn;
  }

  /**
   * Gets the track of the flight
   * 
   * @param {number} flightId id of the flight 
   * @returns {Promise<Track[]>} list of points of the flight
   */
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

  /**
   * Gets the winds of the flight
   * 
   * @param {number} flightId id of the flight 
   * @returns {Promise<Wind[]>} list of winds of the flight
   */
  public static async getFlightWinds(flightId: number): Promise<Wind[]> {
    const toReturn: Wind[] = [];
    await fetch(`${environment.apiRoute}winds/${flightId}`)
      .then((response) => response.json())
      .then((winds) => {
        winds = Object.values(winds);
        winds.forEach((element: any) => {
          toReturn.push(new Wind(element.altitude, element.wind_direction, element.wind_speed));
        });
      });
    return toReturn;
  }

  /**
   * Gets the weather of the flight
   * 
   * @param {number} flightId id of the flight 
   * @returns {Promise<Weather>} 2eather of the flight
   */
  public static async getFlightWeather(flightId: number): Promise<Weather | undefined> {
    let toReturn: Weather | undefined;
    await fetch(`${environment.apiRoute}weather/${flightId}`)
      .then((response) => response.json())
      .then((weather) => {
        weather = Object.values(weather);
        weather.forEach((element: any) => {
          toReturn = new Weather(element);
        });
      });
    return toReturn;
  }

  /**
   * Gets the wind data of the flight
   * 
   * @returns {Promise<Winds[]>} list of all the winds
   */
  public static async getWinds(): Promise<Winds> {
    let toReturn = null;

    const myHeaders = new Headers();
    myHeaders.append("Content-Type", "application/json");

    const raw = JSON.stringify({
      "lat": (<number[]>GLOBAL.MAP_CENTER)[0],
      "lon": (<number[]>GLOBAL.MAP_CENTER)[1],
      "model": "gfs",
      "parameters": ["wind"],
      "levels": ["surface", "1000h", "950h", "925h", "900h", "850h", "800h", "700h",],
      "key": environment.windyKey
    });

    const requestOptions = {
      method: 'POST',
      headers: myHeaders,
      body: raw
    };

    try {
      await fetch("https://api.windy.com/api/point-forecast/v2", requestOptions as any)
        .then(response => response.json())
        .then((result) => { toReturn = result; });
    } catch (e: any) {
      console.warn(`Windy not working, ${e.message}`);
    }

    return new Winds(toReturn);
  }

  /**
   * Saves the winds and weather data of the flight
   * 
   * @param {number} flightid id of the flight
   * @param {number} temperature temperature in celsius
   * @param {number} pressure pressure in hPa
   * @param {Winds} winds wind speed in m/s
   */
  public static async saveWeather(flightid: number, temperature: number, pressure: number, winds: Winds) {
    //Save weather
    fetch(`${environment.apiRoute}newweather/${flightid}/${temperature}/${pressure}`);
    //Save winds
    winds.windsList.forEach(wind => {
      fetch(`${environment.apiRoute}addwind/${flightid}/${wind.altitude}/${wind.windDir}/${wind.windSpeed}`);
    });
  }
}
