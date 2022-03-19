import { Component, Renderer2 } from '@angular/core';
import BackgroundController from './class/backgroundController';
import ConsoleController from './class/consoleController';
import takeoffController from './class/takeoffController';

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
