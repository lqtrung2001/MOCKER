import { Injectable } from '@angular/core';
import { SQLType } from '@core/model/sql-type';
import { User } from '@core/model/user';
import { Category } from '@core/model/category';
import { FormBuilder, FormControl } from '@angular/forms';

/**
 * @author Do Quoc Viet
 * @class AppConfigService
 */

@Injectable({
  providedIn: 'root'
})
export class AppConfigService {
  public loading: FormControl;
  public user: User | undefined;
  public sqlTypes: SQLType[] = [];
  public categories: Category[] = [];

  constructor(
    private formBuilder: FormBuilder
  ) {
    this.loading = formBuilder.control(false, []);
  }
}
