import { Group } from './Group.modal';
import { Schema } from '@core/model/Schema.modal';

export interface Project {
  id: string,
  name: string,
  description?: string,
  group: Group,
  schemas: Schema[]
}
