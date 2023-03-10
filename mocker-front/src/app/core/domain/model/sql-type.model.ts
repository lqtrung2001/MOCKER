import { BaseModel } from '@core/domain/model/base.model';
import { GenerateTypeModel } from '@core/domain/model/generate-type.model';

/**
 * @author Do Quoc Viet
 */

export class SqlTypeModel extends BaseModel {
  public id: string;
  public code: string;
  public description: string;
  public generateTypes: GenerateTypeModel[] = [];
}
