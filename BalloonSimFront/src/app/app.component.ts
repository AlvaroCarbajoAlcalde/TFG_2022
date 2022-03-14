import { Component, Renderer2 } from '@angular/core';
import BackgroundController from './class/backgroundController';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
})
export class AppComponent {
  title = 'BalloonSimulator';

  constructor(private renderer: Renderer2) {
    BackgroundController.startInterval(renderer);
  }
}
