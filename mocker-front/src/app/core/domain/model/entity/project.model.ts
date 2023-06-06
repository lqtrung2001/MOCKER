import { BaseModel } from '@core/domain/model/entity/base.model';
import { GroupModel } from '@core/domain/model/entity/group.model';
import { SchemaModel } from '@core/domain/model/entity/schema.model';

/**
 * @author Do Quoc Viet
 */

export class ProjectModel extends BaseModel {
  public id: string;
  public name: string;
  public description: string;
  public group: GroupModel;
  public schemas: SchemaModel[] = [];
}
