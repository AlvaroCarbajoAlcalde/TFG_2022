import { metersPerSecondToKmPerHour, metersToFeet, randomBetween } from "../class/methods";

export default class Winds {
    public windsList: Wind[];
    private readonly GAP_WINDS = 20;

    /**
     * Create a new Winds object
     * @param params the parameters
     */
    constructor(params: any) {
        this.windsList = [];

        if (params) {
            this.addWind(0, 0, 0);
            this.addWindFromWindyValues(432, params['wind_u-surface'][0], params['wind_v-surface'][0]);
            this.addWindFromWindyValues(580, params['wind_u-1000h'][0], params['wind_v-1000h'][0]);
            this.addWindFromWindyValues(712, params['wind_u-950h'][0], params['wind_v-950h'][0]);
            this.addWindFromWindyValues(821, params['wind_u-925h'][0], params['wind_v-925h'][0]);
            this.addWindFromWindyValues(1189, params['wind_u-900h'][0], params['wind_v-900h'][0]);
            this.addWindFromWindyValues(1457, params['wind_u-850h'][0], params['wind_v-850h'][0]);
            this.addWindFromWindyValues(1949, params['wind_u-800h'][0], params['wind_v-800h'][0]);
            this.addWindFromWindyValues(3012, params['wind_u-700h'][0], params['wind_v-700h'][0]);
        } else {
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
        }

        this.windsList.sort((a, b) => a.altitude - b.altitude);
    }

    /**
     * Adds a wind from windy values
     * 
     * @param altitude altitude in meters
     * @param uComponent component u in m/s
     * @param vComponent component v in m/s
     */
    private addWindFromWindyValues(altitude: number, uComponent: number, vComponent: number) {

        //Extract direction from u and v components
        let direction = Math.atan2(vComponent, uComponent) * 180 / Math.PI;
        if (direction < 0) direction += 360;

        //Extract speed from u and v components
        let speed = Math.sqrt(uComponent * uComponent + vComponent * vComponent);

        this.addWind(altitude, direction, speed);
    }

    /**
     *  Add a new wind
     * 
     * @param altitude altitude in meters
     * @param direction direction in degrees
     * @param speed speed in m/s
     */
    public addWind(altitude: number, direction: number, speed: number) {
        //Delete the wind if it already exists
        this.windsList.forEach(wind => {
            if (wind.altitude === altitude) this.windsList.splice(this.windsList.indexOf(wind), 1);
        });

        this.windsList.push(new Wind(altitude, direction, speed));
        this.windsList.sort((a, b) => a.altitude - b.altitude);
    }

    /**
     * Get the wind at a given altitude 
     * 
     * @param {number} altitude altitude in meters
     * @returns {Wind} first wind with altitude >= altitude and modified to simulate realistic wind
     */
    public getWind(altitude: number): Wind {
        if (altitude < 0) altitude = 0;
        for (let i = 0; i < this.windsList.length; i++) {
            const minAlt = this.windsList[i].altitude;
            const maxAlt = this.windsList[i + 1] ? this.windsList[i + 1].altitude : altitude;
            if (altitude >= minAlt && altitude <= maxAlt) {
                let speed;
                let direction;
                //If wind is close to the next one, return average:
                if (altitude + this.GAP_WINDS > maxAlt && this.windsList[i + 1]) {
                    const percentage = (altitude + this.GAP_WINDS - maxAlt) / this.GAP_WINDS;
                    speed = this.windsList[i].windSpeed * (1 - percentage) + this.windsList[i + 1].windSpeed * percentage;
                    //Average direction
                    const maxDirection = Math.max(this.windsList[i].windDir, this.windsList[i + 1].windDir);
                    const minDirection = Math.min(this.windsList[i].windDir, this.windsList[i + 1].windDir);
                    if (maxDirection - minDirection > 180) direction = maxDirection - (maxDirection - minDirection - 360) * percentage;
                     else direction = (this.windsList[i].windDir * (1 - percentage) + this.windsList[i + 1].windDir * percentage) % 360;
                } else {
                    //Slightly random speed and direction
                    speed = this.windsList[i].windSpeed;
                    speed = randomBetween(speed - 0.01, speed + 0.01);
                    direction = this.windsList[i].windDir;
                    direction = randomBetween(direction - 0.45, direction + 0.45);
                }
                return new Wind(altitude, direction, speed);
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
        this.windsList.forEach(wind => {
            if (wind.altitude === altitude) this.windsList.splice(this.windsList.indexOf(wind), 1);
        });
        if (this.windsList.length === 0) this.windsList.push(new Wind(0, 0, 0));
    }
}

export class Wind {
    public altitude: number;
    public altitudeFeet: number;
    public windDir: number;
    public windSpeed: number;
    public windSpeedKMH: number;
    public color!: string;
    public seeOnMap: boolean;

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
        if (this.windDir < 0) this.windDir += 360;
        if (this.windDir > 360) this.windDir -= 360;
        this.windSpeed = windSpeed;
        if (this.windSpeed < 0) this.windSpeed = 0;
        this.windSpeedKMH = metersPerSecondToKmPerHour(this.windSpeed).toFixed(2) as any;
        this.altitudeFeet = Math.round(metersToFeet(this.altitude));
        this.seeOnMap = true;
    }
}