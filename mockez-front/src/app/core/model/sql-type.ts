import { Base } from '@core/model/base';
import { GenerateType } from '@core/model/generate-type';

/**
 * @author Do Quoc Viet
 */

export class SQLType extends Base {
  public id: string;
  public code: string;
  public description: string;
  public generateTypes: GenerateType[] = [];
}
