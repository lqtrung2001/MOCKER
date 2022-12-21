import { Base } from '@core/model/base';
import { SQLType } from '@core/model/sql-type';
import { GenerateType } from '@core/model/generate-type';
import { Option } from '@core/model/option';
import { Table } from '@core/model/table';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

export class Field extends Base {

  private _id: string | undefined = undefined;
  private _name: string | undefined = undefined;
  private _sqlType: SQLType | undefined = undefined;
  private _generateType: GenerateType | undefined = undefined;
  private _option: Option | undefined = undefined;
  private _table: Table | undefined = undefined;

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

  get sqlType(): SQLType | undefined {
    return this._sqlType;
  }

  set sqlType(value: SQLType | undefined) {
    this._sqlType = value;
  }

  get generateType(): GenerateType | undefined {
    return this._generateType;
  }

  set generateType(value: GenerateType | undefined) {
    this._generateType = value;
  }

  get option(): Option | undefined {
    return this._option;
  }

  set option(value: Option | undefined) {
    this._option = value;
  }

  get table(): Table | undefined {
    return this._table;
  }

  set table(value: Table | undefined) {
    this._table = value;
  }
}
