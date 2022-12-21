import { Component } from '@angular/core';
import { CategoryService } from '@core/service/category.service';
import { SQLTypeService } from '@core/service/sql-type.service';
import { Modal } from '@shared/modal/modal-service/model/modal.model';
import { SQLType } from '@core/model/sql-type';
import { GenerateType } from '@core/model/generate-type';
import { AppConfigProviderService } from '@core/service/app-config-provider.service';
import { Category } from '@core/model/category';
import { FormBuilder, FormControl } from '@angular/forms';

export interface SelectTypeModalOptions {
  isSQLType: boolean;
  type: SQLType | GenerateType;
}

@Component({
  selector: 'app-select-type-modal',
  templateUrl: './select-type.modal.html',
  styleUrls: ['./select-type.modal.scss']
})
export class SelectTypeModal extends Modal {

  option: SelectTypeModalOptions;
  storage: any[] = [];
  types: any[] = [];
  categories: Category[] = [];
  filter: FormControl;

  override onInjectInputs(selectTypeOption: SelectTypeModalOptions): void {
    this.option = selectTypeOption;
    this.types = this.option?.isSQLType ? this.appConfigProvider.sqlTypes : this.appConfigProvider.generateTypes;
    this.storage = this.types;
  }

  constructor(
    private categoryService: CategoryService,
    private sqlTypeService: SQLTypeService,
    private appConfigProvider: AppConfigProviderService,
    private formBuilder: FormBuilder
  ) {
    super();
    this.filter = formBuilder.control('');
    this.filter.valueChanges.subscribe((value: string) => {
      this.types = this.storage.filter((type: SQLType | GenerateType) =>
        type.code?.toUpperCase().includes(value.toUpperCase())
        || type.description?.toUpperCase().includes(value.toUpperCase()));
    });
    categoryService.getCategories().subscribe((categories: Category[]) => {
      this.categories = categories;
    });
  }
}
