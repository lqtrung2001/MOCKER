import { BaseModel } from './base.model';
import { CategoryModel } from '@core/domain/model/entity/category.model';
import { SourceModel } from '@core/domain/model/entity/source.model';
import { SqlTypeModel } from '@core/domain/model/entity/sql-type.model';

/**
 * @author Do Quoc Viet
 */

export class GenerateTypeModel extends BaseModel {
  public id: string;
  public code: string;
  public description: string;
  public category: CategoryModel;
  public sources: SourceModel[] = [];
  public sqlTypes: SqlTypeModel[] = [];
}
