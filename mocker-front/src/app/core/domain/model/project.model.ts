import { BaseModel } from '@core/domain/model/base.model';
import { GroupModel } from '@core/domain/model/group.model';
import { SchemaModel } from '@core/domain/model/schema.model';

/**
 * @author Do Quoc Viet
 */

export class ProjectModel extends BaseModel {
  public id: string;
  public name: string;
  public summary: string;
  public description: string;
  public group: GroupModel;
  public schemas: SchemaModel[] = [];
}
