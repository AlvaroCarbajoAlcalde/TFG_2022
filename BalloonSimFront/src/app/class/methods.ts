/**
 * Converts seconds to a string with the format hh:mm:ss
 * 
 * @param {number} seconds seconds to convert
 * @param {boolean} trim if true hours will be ignored if hours are 0
 * @returns {string} seconds in hh:mm:ss
*/
export function timeInSecondsToString(seconds: number, trim: boolean = false): string {
    const hours = Math.floor(seconds / 3600);
    const minutes = Math.floor((seconds - hours * 3600) / 60);
    seconds = seconds - hours * 3600 - minutes * 60;

    let s_hours = `${hours}`;
    let s_minutes = `${minutes}`;
    let s_seconds = `${seconds}`;

    if (hours < 10) s_hours = `0${hours}`;
    if (minutes < 10) s_minutes = `0${minutes}`;
    if (seconds < 10) s_seconds = `0${seconds}`;

    if (trim && hours == 0) return `${s_minutes}:${s_seconds}`;
    return `${s_hours}:${s_minutes}:${s_seconds}`;
}

/**
 * Converts meters to feet
 * 
 * @param {number} meters meters to convert
 * @returns {number} altitude in feet
 */
export function metersToFeet(meters: number): number {
    return meters * 3.28084;
}

/**
 * Converts feet to meters
 * 
 * @param {number} feet feet to convert
 * @returns {number} altitude in meters
 */
export function feetToMeters(feet: number): number {
    return feet / 3.28084;
}

/**
 * Converts meters per second to km/h
 * 
 * @param metersPerSecond speed in meters per second
 * @returns {number} speed in km/h
 */
export function metersPerSecondToKmPerHour(metersPerSecond: number): number {
    return metersPerSecond * 3.6;
}

/**
 * Converts km/h to meters per second
 * 
 * @param {number} kmPerHour speed in km/h
 * @returns {numnber} speed in meters per second
 */
export function kmPerHourToMetersPerSecond(kmPerHour: number): number {
    return kmPerHour / 3.6;
}

/**
 * Converts km/h to knots
 * 
 * @param {number} kmPerHour speed in km/h 
 * @returns {number} speed in knots
 */
export function kmPerHourToKnots(kmPerHour: number): number {
    return kmPerHour * 0.539957;
}

/**
 * Converts a number to a string with the correct units
 * 
 * @param {number} distance distance in meters
 * @returns {string} distance in km and m
 */
export function distanceToString(distance: number): string {
    let toReturn = '';
    if (distance / 1000 > 0) {
        const km = Math.floor(distance / 1000);
        const m = Math.floor(distance % 1000);
        toReturn = `${km} km, ${m} metros.`;
    } else {
        toReturn = `${distance} metros.`;
    }
    return toReturn;
}