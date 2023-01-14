import { Injectable } from '@angular/core';
import { SQLType } from '@core/model/sql-type';
import { GenerateType } from '@core/model/generate-type';
import { User } from '@core/model/user';
import { LOCALSTORAGE_KEYS } from '@app/app.constant';

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

  get userLocalStorage(): User | undefined {
    const storage = localStorage.getItem(LOCALSTORAGE_KEYS.AUTH);
    if (storage) {
      return JSON.parse(storage) as User;
    }
    return undefined;
  }
}
