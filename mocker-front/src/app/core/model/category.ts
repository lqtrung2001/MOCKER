import { Base } from '@core/model/base';
import { GenerateType } from '@core/model/generate-type';

/**
 * @author Do Quoc Viet
 */

export class Category extends Base {
  public id: string;
  public name: string;
  public description: string;
  public generateTypes: GenerateType[] = [];
}
