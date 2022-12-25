import { Base } from './base';
import { Category } from '@core/model/category';
import { Source } from '@core/model/source';
import { SQLType } from '@core/model/sql-type';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

export class GenerateType extends Base {

  public id: string | undefined = undefined;
  public code: string | undefined = undefined;
  public description: string | undefined = undefined;
  public category: Category | undefined = undefined;
  public sources: Source[] = [];
  public sqlTypes: SQLType[] = [];

}
