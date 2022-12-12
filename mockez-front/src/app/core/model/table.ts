import { Base } from '@core/model/base';
import { Schema } from '@core/model/schema';
import { Field } from '@core/model/field';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

export class Table extends Base {

  private _id: string | undefined = undefined;
  private _name: string | undefined = undefined;
  private _description: string | undefined = undefined;
  private _schema: Schema = new Schema();
  private _fields: Field[] = [];

  get id(): string | undefined {
    return this._id;
  }

  set id(value: string | undefined) {
    this._id = value;
  }

  get name(): string | undefined {
    return this._name;
  }

  set name(value: string | undefined) {
    this._name = value;
  }

  get description(): string | undefined {
    return this._description;
  }

  set description(value: string | undefined) {
    this._description = value;
  }

  get schema(): Schema {
    return this._schema;
  }

  set schema(value: Schema) {
    this._schema = value;
  }

  get fields(): Field[] {
    return this._fields;
  }

  set fields(value: Field[]) {
    this._fields = value;
  }
}
