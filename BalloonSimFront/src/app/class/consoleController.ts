import RequestController from './requestController';

export default class ConsoleController {

  static setConsoleMethods() {
    (<any>window).help = this.showHelp;
    (<any>window).showTakeoffs = this.showTakeoffs;

    this.showHelp();
  }

  private static showHelp() {
    console.group('Help');
    console.info('help() ==> Shows help');
    console.info('sahowTakeoffs() ==> Shows the list of Takeoffs');
    console.groupEnd();
  }

  private static async showTakeoffs() {
    const takeoffs = await RequestController.getTakeOffs();
    console.group('Takeoffs');
    console.table(takeoffs);
    console.groupEnd();
  }
}
