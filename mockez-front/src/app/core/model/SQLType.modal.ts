import { GenerateType } from './GenerateType.modal';

export interface SQLType {
  id: string,
  code?: string,
  description?: string,
  generateTypes?: GenerateType[],
  version?: number
}
