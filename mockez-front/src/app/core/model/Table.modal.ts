import {Schema} from '@core/model/Schema.modal';

export interface Table{
  id: string,
  name: string,
  description?: string
  schema?: Schema[]
}
