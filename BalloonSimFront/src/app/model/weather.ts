export default class Weather {
    public temperature: number;
    public pressure: number;

    /**
     * Creates an instance of weathwe.
     * @param params the parameters
     */
    constructor(params: any) {
        this.temperature = params.temperature;
        this.pressure = params.pressure;
    }
}
