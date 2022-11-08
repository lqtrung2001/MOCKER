import { Project } from '@core/model/Project.modal';
import { Table } from '@core/model/Table.modal';

export interface Schema {
  id?: string,
  name?: string,
  description?: string,
  project?: Project,
  tables?: Table[]
}
