import { SQLType } from './SQLType.modal';
import { GenerateType } from './GenerateType.modal';
import { Option } from './Option.modal';

export interface Field {
  id?: string,
  name?: string,
  sqlType?: SQLType,
  generateType?: GenerateType,
  option?: Option,
  version?: number
}
