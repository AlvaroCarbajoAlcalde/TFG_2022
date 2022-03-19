import Takeoff from '../model/takeoff';

class TakeoffController {
  private static instance: TakeoffController;
  public selectedTakeoff!: Takeoff | null;

  public static getInstance() {
    if (TakeoffController.instance == null) {
      TakeoffController.instance = new TakeoffController();
    }
    return TakeoffController.instance;
  }

  private constructor() {
    this.selectedTakeoff = null;
  }

  public selectTakeoff(takeoff: Takeoff) {
    this.selectedTakeoff = takeoff;
  }
}

export default TakeoffController.getInstance();
