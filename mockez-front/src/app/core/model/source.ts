import { Base } from './base';
import { GenerateType } from '@core/model/generate-type';

export class Source extends Base {

  private _id: string | undefined = undefined;
  private _value: string | undefined = undefined;
  private _generateType: GenerateType | undefined = undefined;

  get id(): string | undefined {
    return this._id;
  }

  set id(value: string | undefined) {
    this._id = value;
  }

  get value(): string | undefined {
    return this._value;
  }

  set value(value: string | undefined) {
    this._value = value;
  }

  get generateType(): GenerateType | undefined {
    return this._generateType;
  }

  set generateType(value: GenerateType | undefined) {
    this._generateType = value;
  }
}
