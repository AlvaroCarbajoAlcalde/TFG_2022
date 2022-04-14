export default class Track {
  public lat: number;
  public lon: number;
  public altitude: number;
  public seconds: number;
  public speed: number;
  public speedy: number;
  public direction: number;
  public fuel: number;

  /**
   * Creates an instance of Track.
   * @param params the parameters
   */
  constructor(params: any) {
    this.altitude = params.altitude;
    this.lat = params.lat;
    this.lon = params.lon;
    this.seconds = params.seconds;
    this.speed = params.speed;
    this.speedy = params.speedy;
    this.direction = params.direction;
    this.fuel = params.fuel;
  }
}
