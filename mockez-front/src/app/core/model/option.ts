import { Base } from '@core/model/base';
import { Field } from '@core/model/field';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

export class Option extends Base {

  public id: string | undefined = undefined;
  public blank: number | undefined = undefined;
  public configuration: string | undefined = undefined;
  public field: Field | undefined = undefined;

}
