import { Base } from '@core/model/base';
import { Group } from '@core/model/group';
import { Schema } from '@core/model/schema';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

export class Project extends Base {

  public id: string | undefined = undefined;
  public name: string | undefined = undefined;
  public summary: string | undefined = undefined;
  public description: string | undefined = undefined;
  public group: Group | undefined = undefined;
  public schemas: Schema[] = [];

}
