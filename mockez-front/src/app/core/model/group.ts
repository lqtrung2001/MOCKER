import { Base } from '@core/model/base';
import { Project } from '@core/model/project';
import { GroupMember } from '@core/model/group-member';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

export class Group extends Base {

  private _id: string | undefined = undefined;
  private _name: string | undefined = undefined;
  private _description: string | undefined = undefined;
  private _projects: Project[] = [];
  private _groupMembers: GroupMember[] = [];

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

  get projects(): Project[] {
    return this._projects;
  }

  set projects(value: Project[]) {
    this._projects = value;
  }

  get groupMembers(): GroupMember[] {
    return this._groupMembers;
  }

  set groupMembers(value: GroupMember[]) {
    this._groupMembers = value;
  }
}
