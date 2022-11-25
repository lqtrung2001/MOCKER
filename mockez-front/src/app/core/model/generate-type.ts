import { Base } from './base';
import { Category } from '@core/model/category';
import { Source } from '@core/model/source';
import { SQLType } from '@core/model/sql-type';

export class GenerateType extends Base {

  private _id: string | undefined = undefined;
  private _code: string | undefined = undefined;
  private _description: string | undefined = undefined;
  private _category: Category | undefined = undefined;
  private _sources: Source[] | undefined = undefined;
  private _sqlTypes: SQLType[] | undefined = undefined;

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

  get category(): Category | undefined {
    return this._category;
  }

  set category(value: Category | undefined) {
    this._category = value;
  }

  get sources(): Source[] | undefined {
    return this._sources;
  }

  set sources(value: Source[] | undefined) {
    this._sources = value;
  }

  get sqlTypes(): SQLType[] | undefined {
    return this._sqlTypes;
  }

  set sqlTypes(value: SQLType[] | undefined) {
    this._sqlTypes = value;
  }
}
