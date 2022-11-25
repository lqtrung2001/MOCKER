import { Base } from '@core/model/base';
import { GenerateType } from '@core/model/generate-type';

export class SQLType extends Base {

  private _id: string | undefined = undefined;
  private _code: string | undefined = undefined;
  private _description: string | undefined = undefined;
  private _generateTypes: GenerateType[] | undefined = undefined;

  get id(): string | undefined {
    return this._id;
  }

  set id(value: string | undefined) {
    this._id = value;
  }

  get code(): string | undefined {
    return this._code;
  }

  set code(value: string | undefined) {
    this._code = value;
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
