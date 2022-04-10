/*
 * Clase Balloon contiene una estancia de un
 * globo y sus metodos.
 */
class Balloon {
  /**
   * Creates an instance of Balloon.
   * @param {*} pointer puntero (modelo esferico) representa la posicion del globo
   * @param {*} model modelo del globo
   * @memberof Balloon
   */
  constructor(pointer, model) {
    this.model = model;
    this.pointer = pointer;
    this.setSpeeds(0, 0);
    this.actSpeedY = 0;
    this.temp = actTemp;
    this.setMetersFromPosition();
  }

  /**
   * setSpeeds
   * Establece las velocidades en m/s a la que se
   * mueve el globo en las coordenadas X y Z a
   * partir de unos grados dados.
   *
   * Mediante la formula
   * X = Sin(a * PI / 180)
   * Y = Cos(a * PI / 180)
   *
   * @param {number} deg grados del viento
   * @param {number} speed velocidad del viento en m/s
   * @memberof Balloon
   */
  setSpeeds(deg, speed) {
    this.actSpeedX = Math.sin((deg * Math.PI) / 180) * speed;
    this.actSpeedZ = Math.cos((deg * Math.PI) / 180) * speed;
  }

  /**
   * calcDegreesLat
   *
   * @return {*} latitud en grados a la que se ecuentra el globo
   * @memberof Balloon
   */
  calcDegreesLat() {
    const latDeg =
      upDeg +
      ((this.pointer.position.z - mapTotalSize) / mapTotalSize) * diffDegY;
    return latDeg.toFixed(5);
  }

  /**
   * calcDegreesLon
   *
   * @return {*} longitud en grados a la que se ecuentra el globo
   * @memberof Balloon
   */
  calcDegreesLon() {
    const lonDeg =
      leftDeg - (this.pointer.position.x / mapTotalSize) * diffDegX;
    return lonDeg.toFixed(5);
  }

  /**
   * setMetersFromPosition
   * Funcion que establece la posicion en m a partir de coordenadas X Y Z
   * @memberof Balloon
   */
  setMetersFromPosition() {
    this.mX = (this.pointer.position.x / mapTotalSize) * mapSizeMeters;
    this.mZ = (this.pointer.position.z / mapTotalSize) * mapSizeMeters;
    this.altura = pointer.position.y * convAltura + sumAltura;
    this.moveBalloonToPointer();
  }

  /**
   * moveBalloonToPointer
   * Mueve el puntero a su posicion despues
   * mueve el modelo a la posicion del puntero
   * @memberof Balloon
   */
  moveBalloonToPointer() {
    if (started) {
      this.pointer.position.x = (this.mX / mapSizeMeters) * mapTotalSize;
      this.pointer.position.z = (this.mZ / mapSizeMeters) * mapTotalSize;
      this.pointer.position.y = (this.altura - sumAltura) / convAltura;
    }
    this.model.position.x = -this.pointer.position.x * 100;
    this.model.position.y = this.pointer.position.y * 100;
    this.model.position.z = this.pointer.position.z * 100;
  }

  /**
   * setMovementInterval
   * Timers que mueven el globo
   * @memberof Balloon
   */
  setMovementInterval() {
    //Longitud
    this.intervalX = setInterval(() => {
      if (started) this.mX += this.actSpeedX / 200;
    }, 5);
    //Latitud
    this.intervalZ = setInterval(() => {
      if (started) this.mZ += this.actSpeedZ / 200;
    }, 5);
    //Altura
    this.intervalY = setInterval(() => {
      if (started) this.altura += this.actSpeedY / 200;
    }, 5);
  }

  /**
   * calculateAscentRatio
   * Calcula la velocidad de ascenso
   * @memberof Balloon
   */
  calculateAscentRatio() {
    const tDiff = this.temp - actTemp - 30;
    this.actSpeedY = tDiff / 10;
    if (tDiff > 0) started = true;
  }
}
