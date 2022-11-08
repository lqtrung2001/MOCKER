import { GenerateType } from './GenerateType.modal';

export interface Source {
  id: string,
  value?: string,
  generateTypes?: GenerateType[],
  version?: number
}
