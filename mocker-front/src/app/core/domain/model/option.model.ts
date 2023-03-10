import { BaseModel } from '@core/domain/model/base.model';
import { FieldModel } from '@core/domain/model/field.model';

/**
 * @author Do Quoc Viet
 */

export class OptionModel extends BaseModel {
  public id: string;
  public blank: number;
  public configuration: string;
  public field: FieldModel;
}
