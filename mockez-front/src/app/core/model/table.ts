import { Base } from '@core/model/base';
import { Schema } from '@core/model/schema';
import { Field } from '@core/model/field';

/**
 * @author Do Quoc Viet
 */

export class Table extends Base {
  public id: string;
  public name: string;
  public description: string;
  public schema: Schema;
  public fields: Field[] = [];
}
