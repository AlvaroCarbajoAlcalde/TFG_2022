import { GLOBAL } from './global';
import RequestController from './requestController';

declare let balloon: any;

export default class ConsoleController {

  static setConsoleMethods() {
    (<any>window).help = this.showHelp;
    (<any>window).showTakeoffs = this.showTakeoffs;
    (<any>window).showFlights = this.showFlights;
    (<any>window).showWinds = this.showWinds;
    (<any>window).showGlobal = this.showGlobal;
    (<any>window).showInGmaePosition = this.showInGamePosition;

    this.showHelp();
  }

  private static showHelp() {
    console.group('Help');
    console.info('help() ==> Shows help');
    console.info('showTakeoffs() ==> Shows the list of Takeoffs');
    console.info('showFlights() ==> Shows the list of Flights');
    console.info('showWinds() ==> Shows the Winds response');
    console.info('showGlobal() ==> Shows the Global variables');
    console.info('showInGamePosition() ==> Shows the actual position variables');
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

  private static async showGlobal() {
    console.groupCollapsed('GLOBAL');
    GLOBAL.toString();
    console.groupEnd();
  }

  private static showInGamePosition() {
    if (balloon) {
      console.groupCollapsed('InGamePosition');
      const toShow = {
        lat: balloon.calcDegreesLat(),
        lon: balloon.calcDegreesLon(),
        x: balloon.pointer.position.x,
        y: balloon.pointer.position.y,
        z: balloon.pointer.position.z,
      };
      console.table(toShow);
      console.groupEnd();
    }
  }

}
