export default class Winds {
    public windsList: Wind[];

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

    public addWind(altitude: number, speed: number, direction: number) {
        this.windsList.push(new Wind(altitude, speed, direction));
        this.windsList.sort((a, b) => a.altitude - b.altitude);
    }

    public getWind(altitude: number): Wind {
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

    constructor(altitude: number, windDir: number, windSpeed: number) {
        this.altitude = altitude;
        this.windDir = windDir;
        this.windSpeed = windSpeed;
        this.windSpeedKMH = Number.parseFloat((windSpeed * 3.60).toFixed(2));
        this.altitudeFeet = Math.round(altitude * 3.28084);
    }
}