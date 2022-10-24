import { Group } from './Group.modal';

export interface Project {
  id: string,
  name: string,
  description?: string
  group: Group[]
}
