import { Base } from '@core/model/base';
import { Gender } from '@core/model/enumeration/gender';
import { GroupMember } from '@core/model/group-member';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

export class User extends Base {

  public id: string | undefined = undefined;
  public username: string | undefined = undefined;
  public password: string | undefined = undefined;
  public name: string | undefined = undefined;
  public bio: string | undefined = undefined;
  public phone: string | undefined = undefined;
  public gender: Gender | undefined = undefined;
  public address: string | undefined = undefined;
  public dob: Date | undefined = undefined;
  public isAccountNonExpired: boolean | undefined = undefined;
  public isAccountNonLocked: boolean | undefined = undefined;
  public isCredentialsNonExpired: boolean | undefined = undefined;
  public isEnabled: boolean | undefined = undefined;
  public grantedAuthorities: string | undefined = undefined;
  public groupMembers: GroupMember[] = [];

}
