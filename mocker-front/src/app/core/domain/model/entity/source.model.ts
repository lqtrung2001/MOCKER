import { BaseModel } from './base.model';
import { GenerateTypeModel } from '@core/domain/model/entity/generate-type.model';

/**
 * @author Do Quoc Viet
 */

export class SourceModel extends BaseModel {
  public id: string;
  public value: string;
  public generateType: GenerateTypeModel;
}
