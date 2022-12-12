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
  private _sqlType: SQLType = new SQLType();
  private _generateType: GenerateType = new GenerateType();
  private _option: Option = new Option();
  private _table: Table = new Table();

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

  get sqlType(): SQLType {
    return this._sqlType;
  }

  set sqlType(value: SQLType) {
    this._sqlType = value;
  }

  get generateType(): GenerateType {
    return this._generateType;
  }

  set generateType(value: GenerateType) {
    this._generateType = value;
  }

  get option(): Option {
    return this._option;
  }

  set option(value: Option) {
    this._option = value;
  }

  get table(): Table {
    return this._table;
  }

  set table(value: Table) {
    this._table = value;
  }
}
