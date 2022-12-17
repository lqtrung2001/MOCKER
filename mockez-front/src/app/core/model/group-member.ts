import { Base } from '@core/model/base';
import { GroupMemberPk } from '@core/model/composite_key/group-member-pk';
import { Role } from '@core/model/enumeration/role';
import { User } from '@core/model/user';
import { Group } from '@core/model/group';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

export class GroupMember extends Base {

  private _id: GroupMemberPk | undefined = undefined;
  private _role: Role | undefined = undefined;
  private _user: User = new User();
  private _group: Group = new Group();

  get id(): GroupMemberPk | undefined {
    return this._id;
  }

  set id(value: GroupMemberPk | undefined) {
    this._id = value;
  }

  get role(): Role | undefined {
    return this._role;
  }

  set role(value: Role | undefined) {
    this._role = value;
  }

  get user(): User {
    return this._user;
  }

  set user(value: User) {
    this._user = value;
  }

  get group(): Group {
    return this._group;
  }

  set group(value: Group) {
    this._group = value;
  }
}