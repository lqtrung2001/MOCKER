import { BaseModel } from '@core/domain/model/base.model';
import { ProjectModel } from '@core/domain/model/project.model';
import { TableModel } from '@core/domain/model/table.model';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

export class SchemaModel extends BaseModel {
  public id: string;
  public name: string;
  public description: string;
  public project: ProjectModel;
  public tables: TableModel[] = [];
}
