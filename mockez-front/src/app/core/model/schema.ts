import { Base } from '@core/model/base';
import { Project } from '@core/model/project';
import { Table } from '@core/model/table';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

export class Schema extends Base {

  public id: string | undefined = undefined;
  public name: string | undefined = undefined;
  public description: string | undefined = undefined;
  public project: Project | undefined = undefined;
  public tables: Table[] = [];

}
