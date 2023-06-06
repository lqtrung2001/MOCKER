import { RoleEnum } from '@core/domain/enum/role.enum';

/**
 * @author Do Quoc Viet
 */

export class RoleUtil {
  static valueOf(role: string): RoleEnum {
    switch (role.toUpperCase()) {
      case RoleEnum.GROUP_ADMIN.valueOf():
        return RoleEnum.GROUP_ADMIN;
      case RoleEnum.GROUP_ASSOCIATE.valueOf():
        return RoleEnum.GROUP_ASSOCIATE;
      case RoleEnum.USER.valueOf():
        return RoleEnum.USER;
    }
    throw new Error('Unsupported role: ' + role);
  }

}
