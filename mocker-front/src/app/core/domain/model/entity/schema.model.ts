import { BaseModel } from '@core/domain/model/entity/base.model';
import { ProjectModel } from '@core/domain/model/entity/project.model';
import { TableModel } from '@core/domain/model/entity/table.model';

/**
 * @author Do Quoc Viet
 */

export class SchemaModel extends BaseModel {
  public id: string;
  public name: string;
  public description: string;
  public project: ProjectModel;
  public tables: TableModel[] = [];
}
