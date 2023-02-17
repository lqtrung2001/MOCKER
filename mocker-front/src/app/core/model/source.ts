import { Base } from './base';
import { GenerateType } from '@core/model/generate-type';

/**
 * @author Do Quoc Viet
 */

export class Source extends Base {
  public id: string;
  public value: string;
  public generateType: GenerateType;
}
