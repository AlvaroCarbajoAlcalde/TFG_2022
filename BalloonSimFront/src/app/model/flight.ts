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
    this.duration = this.setDuration(params.duration);
  }

  /**
   * Formats the duration of the flight in format hh:mm:ss
   *
   * @private
   * @param {number} duration in seconds
   * @return {string} duration in hh:mm:ss
   * @memberof Flight
   */
  private setDuration(duration: number): string {
    const hours = Math.floor(duration / 3600);
    const minutes = Math.floor((duration - hours * 3600) / 60);
    const seconds = duration - hours * 3600 - minutes * 60;

    let s_hours = `${hours}`;
    let s_minutes = `${minutes}`;
    let s_seconds = `${seconds}`;

    if (hours < 10) s_hours = `0${hours}`;
    if (minutes < 10) s_minutes = `0${minutes}`;
    if (seconds < 10) s_seconds = `0${seconds}`;

    return `${s_hours}:${s_minutes}:${s_seconds}`;
  }
}
