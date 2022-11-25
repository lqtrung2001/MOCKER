import { Base } from '@core/model/base';
import { User } from '@core/model/user';
import { Project } from '@core/model/project';
import { GroupAccess } from '@core/model/group-access';

export class Group extends Base {

  private _id: string | undefined = undefined;
  private _name: string | undefined = undefined;
  private _description: string | undefined = undefined;
  private _users: User | undefined = undefined;
  private _projects: Project[] | undefined = undefined;
  private _groupAccesses: GroupAccess[] | undefined = undefined;

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

  get users(): User | undefined {
    return this._users;
  }

  set users(value: User | undefined) {
    this._users = value;
  }

  get projects(): Project[] | undefined {
    return this._projects;
  }

  set projects(value: Project[] | undefined) {
    this._projects = value;
  }

  get groupAccesses(): GroupAccess[] | undefined {
    return this._groupAccesses;
  }

  set groupAccesses(value: GroupAccess[] | undefined) {
    this._groupAccesses = value;
  }
}
