import { BaseModel } from '@core/domain/model/base.model';
import { SqlTypeModel } from '@core/domain/model/sql-type.model';
import { GenerateTypeModel } from '@core/domain/model/generate-type.model';
import { OptionModel } from '@core/domain/model/option.model';
import { TableModel } from '@core/domain/model/table.model';

/**
 * @author Do Quoc Viet
 */

export class FieldModel extends BaseModel {
  public id: string;
  public name: string;
  public sqlType: SqlTypeModel;
  public generateType: GenerateTypeModel;
  public option: OptionModel;
  public table: TableModel;
}
