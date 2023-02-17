import { Base } from '@core/model/base';
import { SQLType } from '@core/model/sql-type';
import { GenerateType } from '@core/model/generate-type';
import { Option } from '@core/model/option';
import { Table } from '@core/model/table';

/**
 * @author Do Quoc Viet
 */

export class Field extends Base {
  public id: string;
  public name: string;
  public sqlType: SQLType;
  public generateType: GenerateType;
  public option: Option;
  public table: Table;
}
