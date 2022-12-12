import { Base } from './base';
import { GenerateType } from '@core/model/generate-type';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

export class Source extends Base {

  private _id: string | undefined = undefined;
  private _value: string | undefined = undefined;
  private _generateType: GenerateType = new GenerateType();

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

  get generateType(): GenerateType {
    return this._generateType;
  }

  set generateType(value: GenerateType) {
    this._generateType = value;
  }
}
