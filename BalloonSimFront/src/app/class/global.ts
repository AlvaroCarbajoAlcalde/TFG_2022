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
    public static WindyResponse: any;
    public static readonly MAP_CENTER: LatLngExpression = [42.54, -2.96];

    /**
     * Initializes the global variables
     * 
     * @returns Promise<void>
     */
    public static async initGLOBAL(): Promise<void> {
        if (this.isInitialized) return;

        GLOBAL.TakeoffPointsList = await RequestController.getTakeOffs();
        GLOBAL.WindyResponse = await RequestController.getWinds();
        GLOBAL.Winds = await RequestController.getWinds();
        GLOBAL.SelectedTakeoff = GLOBAL.TakeoffPointsList[0];
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
        console.log("SkyboxColor: " + this.SkyboxColor);
        console.log("TakeoffPointsList: " + this.TakeoffPointsList.length);
        console.table(this.TakeoffPointsList);
        console.log("WindyResponse: ");
        console.table(this.WindyResponse);
    }

    /**
     * Gets a random skybox color
     * 
     * @returns string
     */
    private static getRandomSkybox(): string {
        const values = ['bluecloud', 'browncloud', 'graycloud', 'yellowcloud'];
        return values[Math.floor(Math.random() * values.length)];
    }
}