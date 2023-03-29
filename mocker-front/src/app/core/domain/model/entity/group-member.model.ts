import { BaseModel } from '@core/domain/model/entity/base.model';
import { RoleEnum } from '@core/domain/enum/role.enum';
import { UserModel } from '@core/domain/model/entity/user.model';
import { GroupModel } from '@core/domain/model/entity/group.model';
import { GroupMemberPkModel } from '@core/domain/model/entity/composite_key/group-member-pk.model';

/**
 * @author Do Quoc Viet
 */

export class GroupMemberModel extends BaseModel {
  public id: GroupMemberPkModel;
  public role: RoleEnum;
  public user: UserModel;
  public group: GroupModel;
}
