import { Injectable } from '@angular/core';
import { SqlTypeModel } from '@core/domain/model/sql-type.model';
import { UserModel } from '@core/domain/model/user.model';
import { CategoryModel } from '@core/domain/model/category.model';
import { FormBuilder, FormControl } from '@angular/forms';

/**
 * @author Do Quoc Viet
 */

@Injectable({
  providedIn: 'root'
})
export class ApplicationConfig {
  public loading: FormControl;
  public user: UserModel | undefined;
  public sqlTypes: SqlTypeModel[] = [];
  public categories: CategoryModel[] = [];

  constructor(
    private formBuilder: FormBuilder
  ) {
    this.loading = formBuilder.control(false, []);
  }
}
