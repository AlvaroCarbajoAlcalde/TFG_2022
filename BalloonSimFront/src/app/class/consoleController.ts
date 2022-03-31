import RequestController from './requestController';

export default class ConsoleController {
  static setConsoleMethods() {
    (<any>window).help = this.showHelp;
    (<any>window).showTakeoffs = this.showTakeoffs;
    (<any>window).showFlights = this.showFlights;
    (<any>window).showWinds = this.showWinds;

    this.showHelp();
  }

  private static showHelp() {
    console.group('Help');
    console.info('help() ==> Shows help');
    console.info('showTakeoffs() ==> Shows the list of Takeoffs');
    console.info('showFlights() ==> Shows the list of Flights');
    console.info('showWinds() ==> Shows the Winds response');
    console.groupEnd();
  }

  private static async showTakeoffs() {
    const takeoffs = await RequestController.getTakeOffs();
    console.groupCollapsed('Takeoffs');
    console.table(takeoffs);
    console.groupEnd();
  }

  private static async showFlights() {
    const flights = await RequestController.getFlights();
    console.groupCollapsed('Flights');
    console.table(flights);
    console.groupEnd();
  }

  private static async showWinds() {
    const winds = await RequestController.getWinds();
    console.groupCollapsed('Winds');
    console.log(winds);
    console.groupEnd();
  }
}
