import { Base } from '@core/model/base';
import { GenerateType } from '@core/model/generate-type';

/**
 * @author Do Quoc Viet
 * @class Category
 * @date 04/03/2023
 */

export class Category extends Base {
  public id: string;
  public name: string;
  public description: string;
  public generateTypes: GenerateType[] = [];
}
