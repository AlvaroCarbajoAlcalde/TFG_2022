/**
 * Shows the data in the tablet
 */
//TODO change interface
function showPositionInTablet() {
    if (testing) {
        positionX.innerHTML = `LAT: ${balloon.calcDegreesLat()}`;
        positionZ.innerHTML = `LON: ${balloon.calcDegreesLon()}`;
        positionY.innerHTML = `X: ${balloon.pointer.position.x}<br>Z: ${balloon.pointer.position.z}<br>Y: ${balloon.pointer.position.y}<br>`;
    }
}

/**
 * Shows the data in the altimeter
 */
function showDataInAltimeter() {
    altTemp.innerHTML = `T ${actTemp} °C`;
    if (started) {
        altSpeedUp.innerHTML = `${balloon.actSpeedY.toFixed(2)} m/s`;
        altWind.innerHTML = `Wind: ${windDir}°<br>${(windSpeed / 0.2778).toFixed(2)} km/h`;
    } else {
        altSpeedUp.innerHTML = "0 m/s";
        altWind.innerHTML = "Wind: 0°<br>0 km/h";
    }
    altPressure.innerHTML = `Pressure<br>${(actPressure - balloon.altitude * 0.112).toFixed(1)} hPa`;
    altAltitude.innerHTML = `${parseInt(balloon.altitude * 3.28)} feet`;
    if (started) setAltBar();
}

/**
 * Paints altimeter bar
 */
//TODO max and min values
function setAltBar() {
    const pixels = parseInt((Math.abs(balloon.actSpeedY) / 8) * 69);
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
        s++;
        if (s == 60) {
            s = 0;
            m++;
            if (m == 60) {
                m = 0;
                h++;
            }
        }
        altTime.innerHTML = `Flight Time: ${getNum2Dig(h)}:${getNum2Dig(m)}:${getNum2Dig(s)}`;
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