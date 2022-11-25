import { Base } from '@core/model/base';
import { GenerateType } from '@core/model/generate-type';

export class Category extends Base {

  private _id: string | undefined = undefined;
  private _name: string | undefined = undefined;
  private _description: string | undefined = undefined;
  private _generateTypes: GenerateType[] | undefined = undefined;

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

  get generateTypes(): GenerateType[] | undefined {
    return this._generateTypes;
  }

  set generateTypes(value: GenerateType[] | undefined) {
    this._generateTypes = value;
  }
}
