import { BaseModel } from '@core/domain/model/entity/base.model';
import { SchemaModel } from '@core/domain/model/entity/schema.model';
import { FieldModel } from '@core/domain/model/entity/field.model';

/**
 * @author Do Quoc Viet
 */

export class TableModel extends BaseModel {
  public id: string;
  public name: string;
  public description: string;
  public row: number;
  public schema: SchemaModel;
  public fields: FieldModel[] = [];
}
