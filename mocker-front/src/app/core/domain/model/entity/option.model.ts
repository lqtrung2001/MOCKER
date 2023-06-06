import { BaseModel } from '@core/domain/model/entity/base.model';
import { FieldModel } from '@core/domain/model/entity/field.model';

/**
 * @author Do Quoc Viet
 */

export class OptionModel extends BaseModel {
  public id: string;
  public blank: number;
  public unique: boolean;
  public configuration: string;
  public field: FieldModel;
}
