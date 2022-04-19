/**
 * Shows the data in the altimeter
 */
function showDataInAltimeter() {
    altTemp.innerHTML = `T ${actTemp.toFixed(1)} °C`;
    if (started) {
        altSpeedUp.innerHTML = `${balloon.actSpeedY.toFixed(2)} m/s`;
        altWind.innerHTML = `Wind: ${Math.round(windDir)}°<br>${(windSpeed / 0.2778).toFixed(2)} km/h`;
    } else {
        altSpeedUp.innerHTML = "0 m/s";
        altWind.innerHTML = "Wind: 0°<br>0 km/h";
    }
    altPressure.innerHTML = `Pressure<br>${(actPressure - balloon.altitude * 0.112).toFixed(1)} hPa`;
    altAltitude.innerHTML = `${parseInt(balloon.altitude * 3.28)} feet`;
    altAltitudeM.innerHTML = `${balloon.altitude.toFixed(1)} m`;
    if (started) setAltBar();
}

/**
 * Paints altimeter bar
 */
function setAltBar() {
    let pixels = parseInt((Math.abs(balloon.actSpeedY) / 8) * 69);
    if (pixels > 69) pixels = 69;
    if (balloon.actSpeedY >= 0) {
        altMedUp.style.height = `${pixels}px`;
        altMedDown.style.height = "0px";
    } else {
        altMedDown.style.height = `${pixels}px`;
        altMedUp.style.height = "0px";
    }
}

/**
 * Shows the time in the clock
 */
function timer() {
    let s = 0;
    let m = 0;
    let h = 0;

    clockInterval = setInterval(() => {
        if (started) s++;
        if (s == 60) {
            s = 0;
            m++;
            if (m == 60) {
                m = 0;
                h++;
            }
        }
        altTime.innerHTML = `${getNum2Dig(h)}:${getNum2Dig(m)}:${getNum2Dig(s)}`;
    }, 1000);
}

/**
 * @param {number} n number
 * @return {number} Gets a number with 2 digits
 */
function getNum2Dig(n) {
    if (n < 10) return `0${n}`;
    else return n;
}

/*Fuel Meter*/

/**
 * Sets the fuel circle
 * @param {number} percent percent of fuel
 */
function setFuelCircleTo(percent) {
    var path = fuelSVG.querySelector('.line');
    var pathLen = path.getTotalLength();
    var adjustedLen = percent * pathLen / 100;
    path.setAttribute('stroke-dasharray', adjustedLen + ' ' + pathLen);
}

/**
 * Sets the fuel meter start position
 * @param {number} percent percent of fuel 
 */
function setFuelStartTo(percent) {
    var path = fuelSVG.querySelector('.line2');
    var pathLen = path.getTotalLength();
    var adjustedLen = percent * pathLen / 100;
    path.setAttribute('stroke-dasharray', adjustedLen + ' ' + pathLen);
}

/**
 * Sets the fuel level to a given percent
 * @param {number} percent percent of fuel 
 */
function setFuelLevelTo(percent) {
    var needle = fuelSVG.querySelector('.needle');
    var endDot = fuelSVG.querySelector('.fuel_end');
    var rotation = percent * 180 / 100;
    needle.setAttribute('transform', 'rotate(' + rotation + ', 81.3, 58.1)');
    endDot.setAttribute('transform', 'rotate(' + rotation + ', 81.3, 58.1)');
    setFuelCircleTo(percent);
}

/**
 * Sets the fuel start level to a given percent
 * @param {number} percent percent of fuel
 */
function setFuelStartLevelTo(percent) {
    var startDot = fuelSVG.querySelector('.fuel_start');
    var rotation = percent * 180 / 100;
    startDot.setAttribute('transform', 'rotate(' + rotation + ', 81.3, 58.1)');
}

/**
 * Initializes the fuel meter
 */
function setFuelMeter() {
    setFuelStartTo(20);
    setFuelStartLevelTo(20);
    setFuelLevelTo(100);
}