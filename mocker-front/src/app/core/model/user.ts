import { Base } from '@core/model/base';
import { Gender } from '@core/model/enumeration/gender';
import { GroupMember } from '@core/model/group-member';

/**
 * @author Do Quoc Viet
 */

export class User extends Base {
  public id: string;
  public username: string;
  public password: string;
  public name: string;
  public bio: string;
  public phone: string;
  public gender: Gender;
  public address: string;
  public dob: Date;
  public isAccountNonExpired: boolean;
  public isAccountNonLocked: boolean;
  public isCredentialsNonExpired: boolean;
  public isEnabled: boolean;
  public grantedAuthorities: string;
  public groupMembers: GroupMember[] = [];
}
