import { BaseModel } from '@core/domain/model/base.model';
import { SchemaModel } from '@core/domain/model/schema.model';
import { FieldModel } from '@core/domain/model/field.model';

/**
 * @author Do Quoc Viet
 */

export class TableModel extends BaseModel {
  public id: string;
  public name: string;
  public description: string;
  public schema: SchemaModel;
  public fields: FieldModel[] = [];
}
