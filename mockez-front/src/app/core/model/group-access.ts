import { Base } from '@core/model/base';
import { GroupAccessPK } from '@core/model/composite_key/group-access-pk';
import { Role } from '@core/model/enumeration/role';
import { User } from '@core/model/user';
import { Group } from '@core/model/group';

export class GroupAccess extends Base {

  private _id: GroupAccessPK | undefined = undefined;
  private _role: Role | undefined = undefined;
  private _user: User | undefined = undefined;
  private _group: Group | undefined = undefined;

  get id(): GroupAccessPK | undefined {
    return this._id;
  }

  set id(value: GroupAccessPK | undefined) {
    this._id = value;
  }

  get role(): Role | undefined {
    return this._role;
  }

  set role(value: Role | undefined) {
    this._role = value;
  }

  get user(): User | undefined {
    return this._user;
  }

  set user(value: User | undefined) {
    this._user = value;
  }

  get group(): Group | undefined {
    return this._group;
  }

  set group(value: Group | undefined) {
    this._group = value;
  }
}
