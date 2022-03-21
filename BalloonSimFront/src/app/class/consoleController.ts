import RequestController from './requestController';

export default class ConsoleController {
  static setConsoleMethods() {
    (<any>window).help = this.showHelp;
    (<any>window).showTakeoffs = this.showTakeoffs;
    (<any>window).showFlights = this.showFlights;

    this.showHelp();
  }

  private static showHelp() {
    console.group('Help');
    console.info('help() ==> Shows help');
    console.info('sahowTakeoffs() ==> Shows the list of Takeoffs');
    console.info('sahowFlights() ==> Shows the list of Flights');
    console.groupEnd();
  }

  private static async showTakeoffs() {
    const takeoffs = await RequestController.getTakeOffs();
    console.groupCollapsed('Takeoffs');
    console.table(takeoffs);
    console.groupEnd();
  }

  private static async showFlights() {
    const flights = await RequestController.getFlights('anon');
    console.groupCollapsed('Flights');
    console.table(flights);
    console.groupEnd();
  }
}
