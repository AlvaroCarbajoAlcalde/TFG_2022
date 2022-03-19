import { environment } from 'src/environments/environment';
import Takeoff from '../model/takeoff';

export default class RequestController {
  public static async getTakeOffs(): Promise<Takeoff[]> {
    const toReturn: Takeoff[] = [];
    await fetch(`${environment.apiRoute}takeoffs`)
      .then((response) => response.json())
      .then((takeoffs) => {
        takeoffs.forEach((element: any) => {
          toReturn.push(new Takeoff(element));
        });
      });
    return toReturn;
  }
}
