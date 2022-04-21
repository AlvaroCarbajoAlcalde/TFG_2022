import { Component } from '@angular/core';
import ConsoleController from './class/consoleController';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
})
export class AppComponent {
  title = 'BalloonSimulator';

  constructor() {
    ConsoleController.setConsoleMethods();
  }
}
