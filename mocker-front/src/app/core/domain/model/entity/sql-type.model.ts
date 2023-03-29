import { BaseModel } from '@core/domain/model/entity/base.model';
import { GenerateTypeModel } from '@core/domain/model/entity/generate-type.model';

/**
 * @author Do Quoc Viet
 */

export class SqlTypeModel extends BaseModel {
  public id: string;
  public code: string;
  public description: string;
  public generateTypes: GenerateTypeModel[] = [];
}
