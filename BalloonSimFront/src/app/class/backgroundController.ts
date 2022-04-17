class BackgroundController {
  private static instance: BackgroundController;

  private readonly secondsGap = 10;
  private interval!: any;

  /**
   * Gets the instance of the class
   * 
   * @returns {BackgroundController}
   */
  public static getInstance(): BackgroundController {
    if (BackgroundController.instance == null) {
      BackgroundController.instance = new BackgroundController();
    }
    return BackgroundController.instance;
  }

  private constructor() { }

  /**
   * Starts the interval to update the background
   */
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

  /**
   * Stops the interval to update the background
   */
  public stopInterval() {
    clearInterval(this.interval);
  }
}

export default BackgroundController.getInstance();
