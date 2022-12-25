import { Base } from '@core/model/base';
import { GenerateType } from '@core/model/generate-type';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

export class Category extends Base {

  public id: string | undefined = undefined;
  public name: string | undefined = undefined;
  public description: string | undefined = undefined;
  public generateTypes: GenerateType[] = [];

}
