import { Base } from '@core/model/base';
import { Group } from '@core/model/group';
import { Schema } from '@core/model/schema';

export class Project extends Base {

  private _id: string | undefined = undefined;
  private _name: string | undefined = undefined;
  private _description: string | undefined = undefined;
  private _group: Group | undefined = undefined;
  private _schemas: Schema[] | undefined = undefined;

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

  get group(): Group | undefined {
    return this._group;
  }

  set group(value: Group | undefined) {
    this._group = value;
  }

  get schemas(): Schema[] | undefined {
    return this._schemas;
  }

  set schemas(value: Schema[] | undefined) {
    this._schemas = value;
  }
}
