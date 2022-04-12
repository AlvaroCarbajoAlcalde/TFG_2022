export default class Track {
  public lat: number;
  public lon: number;
  public altitude: number;
  public seconds: number;

  /**
   * 
   * @param params 
   */
  constructor(params: any) {
    this.altitude = params.altitude;
    this.lat = params.lat;
    this.lon = params.lon;
    this.seconds = params.seconds;
  }
}
