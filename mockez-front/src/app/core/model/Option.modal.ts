import { Field } from './Field.modal';

export interface Option {
  id: string,
  blank?: number,
  field?: Field,
  version: number
}
