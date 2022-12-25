import { Base } from '@core/model/base';
import { Schema } from '@core/model/schema';
import { Field } from '@core/model/field';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

export class Table extends Base {

  public id: string | undefined = undefined;
  public name: string | undefined = undefined;
  public description: string | undefined = undefined;
  public schema: Schema | undefined = undefined;
  public fields: Field[] = [];

}
