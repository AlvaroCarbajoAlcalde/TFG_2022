import { Component } from '@angular/core';
import BackgroundController from './class/backgroundController';
import ConsoleController from './class/consoleController';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
})
export class AppComponent {
  title = 'BalloonSimulator';

  constructor() {
    BackgroundController.startInterval();
    ConsoleController.setConsoleMethods();
  }
}
