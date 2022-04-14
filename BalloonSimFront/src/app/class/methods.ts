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

    if(trim && hours == 0) return `${s_minutes}:${s_seconds}`;
    return `${s_hours}:${s_minutes}:${s_seconds}`;
}