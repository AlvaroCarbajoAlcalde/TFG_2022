class FlightNameController {
  private static instance: FlightNameController;
  private currentName: string;

  public static getInstance() {
    if (FlightNameController.instance == null) {
      FlightNameController.instance = new FlightNameController();
    }
    return FlightNameController.instance;
  }

  private constructor() {
    this.currentName = 'undefined';
  }

  public getCurrentName(): string {
    const toReturn = this.currentName;
    this.currentName = 'undefined';
    return toReturn;
  }

  public setCurrentName(value: string) {
    this.currentName = value;
  }
}

export default FlightNameController.getInstance();
