import { Injectable } from '@angular/core';
import { SQLType } from '@core/model/sql-type';
import { GenerateType } from '@core/model/generate-type';
import { User } from '@core/model/user';
import { Category } from '@core/model/category';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Injectable({
  providedIn: 'root'
})
export class AppConfigService {
  public loading: boolean = false;
  public user: User | undefined;
  public sqlTypes: SQLType[] = [];
  public generateTypes: GenerateType[] = [];
  public categories: Category[] = [];
}
