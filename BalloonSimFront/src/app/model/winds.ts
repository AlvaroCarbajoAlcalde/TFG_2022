export default class Winds {
    public winds: Wind[];

    constructor(params: any) {
        this.winds = [
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
        this.winds.sort((a, b) => a.altitude - b.altitude);
    }

    public addWind(altitude: number, speed: number, direction: number) {
        this.winds.push(new Wind(altitude, speed, direction));
        this.winds.sort((a, b) => a.altitude - b.altitude);
    }

    public getWind(altitude: number): Wind {
        for (let i = 0; i < this.winds.length; i++) {
            const minAlt = this.winds[i].altitude;
            const maxAlt = this.winds[i + 1] ? this.winds[i + 1].altitude : altitude;
            if (altitude >= minAlt && altitude <= maxAlt) {
                return this.winds[i];
            }
        }
        console.error("No wind found for altitude: ", altitude);
        return new Wind(0, 0, 0);
    }
}

export class Wind {
    public altitude: number;
    public windDir: number;
    public windSpeed: number;

    constructor(altitude: number, windDir: number, windSpeed: number) {
        this.altitude = altitude;
        this.windDir = windDir;
        this.windSpeed = windSpeed;
    }
}