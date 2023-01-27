import { Base } from '@core/model/base';
import { Project } from '@core/model/project';
import { Table } from '@core/model/table';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

export class Schema extends Base {
  public id: string;
  public name: string;
  public description: string;
  public project: Project;
  public tables: Table[] = [];
}
