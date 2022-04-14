import { timeInSecondsToString } from "../class/methods";

export default class Flight {
  public id: number;
  public no!: number;
  public date: number;
  public name: string;
  public takeoff: string;
  public duration: string;
  public seconds: number;

  /**
   * Creates an instance of Flight.
   * @param params the parameters
   */
  constructor(params: any) {
    this.id = params.id;
    if (params.no) this.no = params.no;
    this.date = params.date;
    this.name = params.name;
    this.takeoff = params.takeoff;
    this.seconds = params.duration;
    this.duration = timeInSecondsToString(params.duration);
  }
}
