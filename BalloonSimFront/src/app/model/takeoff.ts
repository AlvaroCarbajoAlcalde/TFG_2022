export default class Takeoff {
  public id: number;
  public name: string;
  public description: string;
  public x: number;
  public z: number;
  public y: number;
  public lat: number;
  public lon: number;
  public alt: number;
  public img: string;

  /**
   * Creates an instance of Takeoff.
   * @param params the parameters
   */
  constructor(params: any) {
    this.id = params.id;
    this.name = params.name;
    this.description = params.description;
    this.x = params.x;
    this.z = params.z;
    this.y = params.y;
    this.alt = Math.round(params.y * 4.498 + 332);
    this.lat = params.lat;
    this.lon = params.lon;
    this.img = params.image;
  }
}