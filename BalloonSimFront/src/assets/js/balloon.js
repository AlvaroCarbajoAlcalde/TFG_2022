class Balloon {
    /**
     * Creates an instance of Balloon.
     * @param {*} pointer represents balloon position
     * @param {*} model balloon model
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
     * Method to set the speeds in m/s to move the balloon
     * Depending on the degrees given.
     * X = Sin(angle * PI / 180)
     * Y = Cos(angle * PI / 180)
     *
     * @param {number} deg wind direction in degrees
     * @param {number} speed wind speed in m/s
     * @memberof Balloon
     */
    setSpeeds(deg, speed) {
        this.actSpeedX = Math.sin((deg * Math.PI) / 180) * speed;
        this.actSpeedZ = Math.cos((deg * Math.PI) / 180) * speed;
    }

    /**
     * Method to calculate latitude degrees
     *
     * @return {number} latitude degrees of the balloon
     * @memberof Balloon
     */
    calcDegreesLat() {
        const latDeg = upDeg + ((this.pointer.position.z - mapTotalSize) / mapTotalSize) * diffDegY;
        return latDeg.toFixed(5);
    }

    /**
     * Method to calculate longitude degrees
     *
     * @return {number} longitude degrees of the balloon
     * @memberof Balloon
     */
    calcDegreesLon() {
        const lonDeg = leftDeg - (this.pointer.position.x / mapTotalSize) * diffDegX;
        return lonDeg.toFixed(5);
    }

    /**
     * Sets the meters from position transforming x, y and z to real meters
     * @memberof Balloon
     */
    setMetersFromPosition() {
        this.mX = (this.pointer.position.x / mapTotalSize) * mapSizeMeters;
        this.mZ = (this.pointer.position.z / mapTotalSize) * mapSizeMeters;
        this.altura = pointer.position.y * convAltura + sumAltura;
        this.moveBalloonToPointer();
    }

    /**
     * Moves the balloon to the pointer position
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
     * Sets the movement interval of the balloon
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
     * Calculates the ascent ratio
     * @memberof Balloon
     */
    calculateAscentRatio() {
        const tDiff = this.temp - actTemp - 30;
        this.actSpeedY = tDiff / 10;
        if (tDiff > 0) started = true;
    }
}