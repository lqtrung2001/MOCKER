import { BaseModel } from '@core/domain/model/base.model';
import { ProjectModel } from '@core/domain/model/project.model';
import { GroupMemberModel } from '@core/domain/model/group-member.model';

/**
 * @author Do Quoc Viet
 */

export class GroupModel extends BaseModel {
  public id: string;
  public name: string;
  public description: string;
  public projects: ProjectModel[] = [];
  public groupMembers: GroupMemberModel[] = [];
}
