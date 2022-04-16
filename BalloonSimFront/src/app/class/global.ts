import { LatLngExpression } from "leaflet";
import Takeoff from "../model/takeoff";
import Winds from "../model/winds";
import RequestController from "./requestController";

export class GLOBAL {

    private static isInitialized: boolean = false;
    public static SelectedTakeoff: Takeoff;
    public static FlightName: string;
    public static SkyboxColor: string;
    public static TakeoffPointsList: Takeoff[];
    public static Winds: Winds;
    public static Temperature: number;
    public static readonly MAP_CENTER: LatLngExpression = [42.54, -2.96];

    /**
     * Initializes the global variables
     * 
     * @returns Promise<void>
     */
    public static async initGLOBAL(): Promise<void> {
        if (this.isInitialized) return;

        GLOBAL.TakeoffPointsList = await RequestController.getTakeOffs();
        GLOBAL.Winds = await RequestController.getWinds();
        GLOBAL.SelectedTakeoff = GLOBAL.TakeoffPointsList[0];
        GLOBAL.Temperature = 12;
        GLOBAL.SkyboxColor = this.getRandomSkybox();
        GLOBAL.FlightName = 'Sin nombre';
        this.isInitialized = true;
    }

    /**
     * Prints the global variables
     */
    public static toString(): void {
        console.log("Is initialized: ", this.isInitialized);
        console.log("SelectedTakeoff: " + this.SelectedTakeoff.name);
        console.log("FlightName: " + this.FlightName);
        console.log("Temperature: " + this.Temperature);
        console.log("SkyboxColor: " + this.SkyboxColor);
        console.log("TakeoffPointsList: " + this.TakeoffPointsList.length);
        console.table(this.TakeoffPointsList);
        console.log("Winds: " + this.Winds.windsList.length);
        console.table(this.Winds.windsList);
    }

    /**
     * Gets a random skybox color
     * 
     * @returns string
     */
    public static getRandomSkybox(): string {
        const values = ['bluecloud', 'browncloud', 'graycloud', 'yellowcloud'];
        return values[Math.floor(Math.random() * values.length)];
    }
}