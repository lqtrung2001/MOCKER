import { Base } from './base';
import { Category } from '@core/model/category';
import { Source } from '@core/model/source';
import { SQLType } from '@core/model/sql-type';

/**
 * @author Do Quoc Viet
 */

export class GenerateType extends Base {
  public id: string;
  public code: string;
  public description: string;
  public category: Category;
  public sources: Source[] = [];
  public sqlTypes: SQLType[] = [];
}
