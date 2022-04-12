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

  constructor(params: any) {
    this.id = params.id;
    this.name = params.name;
    this.description = params.description;
    this.x = params.x;
    this.z = params.z;
    this.y = params.y;
    this.alt = Math.round(this.y * 4.498 + 332);
    this.lat = params.lat;
    this.lon = params.lon;
    this.img = params.image;
  }
}
