import { Base } from '@core/model/base';
import { Group } from '@core/model/group';
import { Schema } from '@core/model/schema';

/**
 * @author Do Quoc Viet
 */

export class Project extends Base {
  public id: string;
  public name: string;
  public summary: string;
  public description: string;
  public group: Group;
  public schemas: Schema[] = [];
}
