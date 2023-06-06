import { RoleEnum } from '@core/domain/enum/role.enum';
import { StringUtil } from '@core/util/string.util';

/**
 * @autho Do Quoc Viet
 */
export class PermissionUtil {

  static getLabelFollowingRole(role: RoleEnum): string {
    switch (role) {
      case RoleEnum.GROUP_ADMIN:
        return 'You have Administrator permission (group admin)! <br/>You can update/delete this entity.';
      case RoleEnum.GROUP_ASSOCIATE:
        return 'You have Associate permission (group associate)! <br/>You can update but can not delete this entity.';
      case RoleEnum.USER:
        return 'You have User permission (user)! <br/>You only can view this entity and can not update or delete it.';
    }
    return StringUtil.EMPTY;
  }

}
