import { timeInSecondsToString } from "../class/methods";

export default class Flight {
  public id: number;
  public no!: number;
  public date: number;
  public name: string;
  public takeoff: string;
  public duration: string;

  /**
   * 
   * @param params 
   */
  constructor(params: any) {
    this.id = params.id;
    if (params.no) this.no = params.no;
    this.date = params.date;
    this.name = params.name;
    this.takeoff = params.takeoff;
    this.duration = timeInSecondsToString(params.duration);
  }
}
