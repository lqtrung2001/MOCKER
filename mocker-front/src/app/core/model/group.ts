import { Base } from '@core/model/base';
import { Project } from '@core/model/project';
import { GroupMember } from '@core/model/group-member';

/**
 * @author Do Quoc Viet
 */

export class Group extends Base {
  public id: string;
  public name: string;
  public description: string;
  public projects: Project[] = [];
  public groupMembers: GroupMember[] = [];
}
