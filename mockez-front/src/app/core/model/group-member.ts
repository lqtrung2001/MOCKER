import { Base } from '@core/model/base';
import { Role } from '@core/model/enumeration/role';
import { User } from '@core/model/user';
import { Group } from '@core/model/group';
import { GroupMemberPk } from '@core/model/composite_key/group-member-pk';

/**
 * @author Do Quoc Viet
 */

export class GroupMember extends Base {
  public id: GroupMemberPk;
  public role: Role;
  public user: User;
  public group: Group;
}
