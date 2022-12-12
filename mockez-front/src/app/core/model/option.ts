import { Base } from '@core/model/base';
import { Field } from '@core/model/field';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

export class Option extends Base {

  private _id: string | undefined = undefined;
  private _blank: number | undefined = undefined;
  private _configuration: string | undefined = undefined;
  private _field: Field = new Field();

  get id(): string | undefined {
    return this._id;
  }

  set id(value: string | undefined) {
    this._id = value;
  }

  get blank(): number | undefined {
    return this._blank;
  }

  set blank(value: number | undefined) {
    this._blank = value;
  }

  get configuration(): string | undefined {
    return this._configuration;
  }

  set configuration(value: string | undefined) {
    this._configuration = value;
  }

  get field(): Field {
    return this._field;
  }

  set field(value: Field) {
    this._field = value;
  }
}
