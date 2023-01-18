import { Injectable } from '@angular/core';
import { SQLType } from '@core/model/sql-type';
import { GenerateType } from '@core/model/generate-type';
import { User } from '@core/model/user';

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
}
