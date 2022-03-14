class SkyboxController {
  private static instance: SkyboxController;
  public currentSelected: string;
  private readonly values = [
    'bluecloud',
    'browncloud',
    'graycloud',
    'yellowcloud',
  ];

  public static getInstance() {
    if (SkyboxController.instance == null) {
      SkyboxController.instance = new SkyboxController();
    }
    return SkyboxController.instance;
  }

  private constructor() {
    this.currentSelected = this.getRandomSkybox();
  }

  public getRandomSkybox(): string {
    return this.values[Math.floor(Math.random() * this.values.length)];
  }
}

export default SkyboxController.getInstance();
