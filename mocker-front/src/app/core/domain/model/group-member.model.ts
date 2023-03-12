import { BaseModel } from '@core/domain/model/base.model';
import { RoleEnum } from '@core/domain/enum/role.enum';
import { UserModel } from '@core/domain/model/user.model';
import { GroupModel } from '@core/domain/model/group.model';
import { GroupMemberPkModel } from '@core/domain/model/composite_key/group-member-pk.model';

/**
 * @author Do Quoc Viet
 */

export class GroupMemberModel extends BaseModel {
  public id: GroupMemberPkModel;
  public role: RoleEnum;
  public user: UserModel;
  public group: GroupModel;
}
