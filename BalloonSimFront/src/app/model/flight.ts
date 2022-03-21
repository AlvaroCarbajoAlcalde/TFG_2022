export default class Flight {
  public id: number;
  public no: number;
  public date: number;
  public user: string;
  public duration: number;

  constructor(params: any) {
    this.id = params.id;
    this.no = params.no;
    this.date = params.date;
    this.user = params.user;
    this.duration = params.duration;
  }
}
