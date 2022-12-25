import { Base } from './base';
import { GenerateType } from '@core/model/generate-type';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

export class Source extends Base {

  public id: string | undefined = undefined;
  public value: string | undefined = undefined;
  public generateType: GenerateType | undefined = undefined;

}
