import { Base } from '@core/model/base';
import { SQLType } from '@core/model/sql-type';
import { GenerateType } from '@core/model/generate-type';
import { Option } from '@core/model/option';
import { Table } from '@core/model/table';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

export class Field extends Base {

  public id: string | undefined = undefined;
  public name: string | undefined = undefined;
  public sqlType: SQLType | undefined = undefined;
  public generateType: GenerateType | undefined = undefined;
  public option: Option | undefined = undefined;
  public table: Table | undefined = undefined;
}
