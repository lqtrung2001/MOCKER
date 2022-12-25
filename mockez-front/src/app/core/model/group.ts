import { Base } from '@core/model/base';
import { Project } from '@core/model/project';
import { GroupMember } from '@core/model/group-member';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

export class Group extends Base {

  public id: string | undefined = undefined;
  public name: string | undefined = undefined;
  public description: string | undefined = undefined;
  public projects: Project[] = [];
  public groupMembers: GroupMember[] = [];

}
