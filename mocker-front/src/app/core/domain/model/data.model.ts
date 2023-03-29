/**
 * @author Do Quoc Viet
 */

export type DataDetail = {
  [key: string]: string | number
};

export class DataModel {
  [key: string]: {
    index: number,
    values: DataDetail[]
  }
}
