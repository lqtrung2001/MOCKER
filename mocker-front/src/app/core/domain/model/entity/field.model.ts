import { BaseModel } from '@core/domain/model/entity/base.model';
import { SqlTypeModel } from '@core/domain/model/entity/sql-type.model';
import { GenerateTypeModel } from '@core/domain/model/entity/generate-type.model';
import { OptionModel } from '@core/domain/model/entity/option.model';
import { TableModel } from '@core/domain/model/entity/table.model';

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
