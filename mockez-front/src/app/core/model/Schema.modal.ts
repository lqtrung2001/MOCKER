import {Project} from '@core/model/Project.modal';

export interface Schema{
  id: string,
  name: string,
  description?: string
  project: Project[]
}
