class BackgroundController {
  private static instance: BackgroundController;

  private readonly secondsGap = 10;
  private interval!: any;

  public static getInstance() {
    if (BackgroundController.instance == null) {
      BackgroundController.instance = new BackgroundController();
    }
    return BackgroundController.instance;
  }

  private constructor() { }

  public startInterval() {
    const sliders = document.getElementsByClassName('slide-img');
    let n = 0;

    this.interval = setInterval(() => {
      n++;
      if (n >= sliders.length) n = 0;

      Array.from(sliders).forEach((slider) => {
        slider.classList.remove('active');
      });
      sliders[n].classList.add('active');
    }, this.secondsGap * 1000);
  }

  public stopInterval() {
    clearInterval(this.interval);
  }
}

export default BackgroundController.getInstance();
