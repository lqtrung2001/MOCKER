import { Base } from '@core/model/base';
import { Project } from '@core/model/project';
import { Table } from '@core/model/table';

export class Schema extends Base {

  private _id: string | undefined = undefined;
  private _name: string | undefined = undefined;
  private _description: string | undefined = undefined;
  private _project: Project | undefined = undefined;
  private _tables: Table[] | undefined = undefined;

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

  get project(): Project | undefined {
    return this._project;
  }

  set project(value: Project | undefined) {
    this._project = value;
  }

  get tables(): Table[] | undefined {
    return this._tables;
  }

  set tables(value: Table[] | undefined) {
    this._tables = value;
  }
}
