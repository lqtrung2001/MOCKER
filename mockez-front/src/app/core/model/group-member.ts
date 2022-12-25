import { Base } from '@core/model/base';
import { Role } from '@core/model/enumeration/role';
import { User } from '@core/model/user';
import { Group } from '@core/model/group';
import { GroupMemberPk } from '@core/model/composite_key/group-member-pk';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

export class GroupMember extends Base {

  public id: GroupMemberPk | undefined = undefined;
  public role: Role | undefined = undefined;
  public user: User | undefined = undefined;
  public group: Group | undefined = undefined;

}
