import { Base } from '@core/model/base';
import { Field } from '@core/model/field';

/**
 * @author Do Quoc Viet
 */

export class Option extends Base {
  public id: string;
  public blank: number;
  public configuration: string;
  public field: Field;
}
