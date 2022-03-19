class SkyboxController {
  private static instance: SkyboxController;
  public currentSelected: string;
  public static readonly values = [
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
    return SkyboxController.values[
      Math.floor(Math.random() * SkyboxController.values.length)
    ];
  }
}

export default SkyboxController.getInstance();
