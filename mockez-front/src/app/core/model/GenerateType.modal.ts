import { Category } from './Category.modal';
import { Source } from './Source.modal';
import { SQLType } from './SQLType.modal';

export interface GenerateType {
  id: string,
  code?: string,
  description?: string,
  category?: Category,
  sources?: Source[],
  sqlTypes?: SQLType[],
  version?: number
}
