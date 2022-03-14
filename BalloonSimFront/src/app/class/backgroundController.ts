import { Renderer2 } from '@angular/core';

class BackgroundController {
  private static instance: BackgroundController;

  private readonly secondsGap = 7.5;
  private readonly maxImages = 5;
  private readonly screenshotsRoute = 'assets/screenshots';
  private n!: number;
  private interval!: any;

  public static getInstance() {
    if (BackgroundController.instance == null) {
      BackgroundController.instance = new BackgroundController();
    }
    return BackgroundController.instance;
  }

  private constructor() {}

  public startInterval(renderer: Renderer2) {
    this.n = 0;
    console.count('Create');

    renderer.setStyle(
      document.body,
      'backgroundImage',
      `url('${this.screenshotsRoute}/0.png')`
    );

    this.interval = setInterval(() => {
      this.n++;
      if (this.n > this.maxImages - 1) this.n = 0;
      renderer.setStyle(
        document.body,
        'backgroundImage',
        `url('${this.screenshotsRoute}/${this.n}.png')`
      );
      console.count('Change');
    }, this.secondsGap * 1000);
  }

  private destroy() {
    clearInterval(this.interval);
  }
}

export default BackgroundController.getInstance();
