export default class Winds {
    public windsList: Wind[];

    /**
     * Create a new Winds object
     * @param params the parameters
     */
    constructor(params: any) {
        this.windsList = [
            new Wind(0, 13, 3),
            new Wind(600, 341, 4),
            new Wind(700, 24, 5),
            new Wind(850, 33, 2),
            new Wind(975, 90, 7),
            new Wind(1200, 122, 1),
            new Wind(1400, 245, 11),
            new Wind(1600, 345, 6),
            new Wind(2000, 20, 2),
        ];
        this.windsList.sort((a, b) => a.altitude - b.altitude);
    }

    /**
     *  Add a new wind
     * 
     * @param altitude altitude in meters
     * @param direction direction in degrees
     * @param speed speed in m/s
     */
    public addWind(altitude: number, direction: number, speed: number) {
        this.windsList.splice(this.windsList.findIndex(wind => wind.altitude == altitude), 1);
        this.windsList.push(new Wind(altitude, direction, speed));
        this.windsList.sort((a, b) => a.altitude - b.altitude);
    }

    /**
     * Get the wind at a given altitude
     * 
     * @param altitude altitude in meters
     * @returns {Wind} first wind with altitude >= altitude
     */
    public getWind(altitude: number): Wind {
        if (altitude < 0) altitude = 0;
        for (let i = 0; i < this.windsList.length; i++) {
            const minAlt = this.windsList[i].altitude;
            const maxAlt = this.windsList[i + 1] ? this.windsList[i + 1].altitude : altitude;
            if (altitude >= minAlt && altitude <= maxAlt) {
                return this.windsList[i];
            }
        }
        console.error("No wind found for altitude: ", altitude);
        return new Wind(0, 0, 0);
    }

    /**
     * Remove a wind
     * 
     * @param altitude altitude in meters 
     */
    public removeWind(altitude: number) {
        this.windsList.splice(this.windsList.findIndex(wind => wind.altitude === altitude), 1);
        if (this.windsList.length === 0) this.windsList.push(new Wind(0, 0, 0));
    }
}

export class Wind {
    public altitude: number;
    public altitudeFeet: number;
    public windDir: number;
    public windSpeed: number;
    public windSpeedKMH: number;

    /**
     * Create a new wind
     * 
     * @param altitude altitude in meters
     * @param windDir direction in degrees
     * @param windSpeed speed in m/s
     */
    constructor(altitude: number, windDir: number, windSpeed: number) {
        this.altitude = altitude;
        if (this.altitude < 0) this.altitude = 0;
        this.windDir = windDir;
        if (this.windDir < 0 || this.windDir > 359.999) this.windDir = 0;
        this.windSpeed = windSpeed;
        if (this.windSpeed < 0) this.windSpeed = 0;
        this.windSpeedKMH = Number.parseFloat((this.windSpeed * 3.60).toFixed(2));
        this.altitudeFeet = Math.round(this.altitude * 3.28084);
    }
}