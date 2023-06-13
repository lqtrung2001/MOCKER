/**
 * @author Do Quoc Viet
 */
export class PromiseUtil {
  static newPromise(callBack: (resolve: any, reject: any) => void): Promise<any> {
    return new Promise(callBack);
  }
}
