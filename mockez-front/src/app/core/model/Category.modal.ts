import { GenerateType } from './GenerateType.modal';

export interface Category {
  id: string,
  name?: string,
  description?: string,
  generateTypes?: GenerateType[],
  version: number
}
