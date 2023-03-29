import { BaseModel } from '@core/domain/model/entity/base.model';
import { ProjectModel } from '@core/domain/model/entity/project.model';
import { GroupMemberModel } from '@core/domain/model/entity/group-member.model';

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
