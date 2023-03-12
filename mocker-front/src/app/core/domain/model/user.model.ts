import { BaseModel } from '@core/domain/model/base.model';
import { GenderEnum } from '@core/domain/enum/gender.enum';
import { GroupMemberModel } from '@core/domain/model/group-member.model';

/**
 * @author Do Quoc Viet
 */

export class UserModel extends BaseModel {
  public id: string;
  public username: string;
  public password: string;
  public name: string;
  public bio: string;
  public phone: string;
  public gender: GenderEnum;
  public address: string;
  public dob: Date;
  public isAccountNonExpired: boolean;
  public isAccountNonLocked: boolean;
  public isCredentialsNonExpired: boolean;
  public isEnabled: boolean;
  public grantedAuthorities: string;
  public groupMembers: GroupMemberModel[] = [];
}
