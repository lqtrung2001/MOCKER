import { Injectable } from '@angular/core';
import { SqlTypeModel } from '@core/domain/model/entity/sql-type.model';
import { UserModel } from '@core/domain/model/entity/user.model';
import { CategoryModel } from '@core/domain/model/entity/category.model';
import { FormBuilder, FormControl } from '@angular/forms';
import { FormatEnum } from '@core/domain/enum/format.enum';

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
  public formats: {
    icon: string;
    format: FormatEnum
  }[] = [
    {
      icon: 'fa-solid fa-database',
      format: FormatEnum.SQL
    },
    {
      icon: 'fa-solid fa-table',
      format: FormatEnum.JSON
    },
    {
      icon: 'fa-solid fa-file-excel',
      format: FormatEnum.XML
    },
    {
      icon: 'fa-solid fa-file-csv',
      format: FormatEnum.CSV
    }
  ];
  public numberItemsOfPage: number = 8;

  constructor(
    private formBuilder: FormBuilder
  ) {
    this.loading = formBuilder.control(false, []);
  }
}
