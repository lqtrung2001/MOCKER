import { Component, Injector, OnInit } from '@angular/core';
import { AbstractModal } from '@core/class/abstract.modal';
import { FormControl } from '@angular/forms';
import { GenerateType } from '@core/model/generate-type';
import { GenerateTypeService } from '@core/service/generate-type.service';
import { CategoryService } from '@core/service/category.service';
import { Category } from '@core/model/category';
import { SQLType } from '@core/model/sql-type';
import { SQLTypeService } from '@core/service/sql-type.service';

/**
 * @author Do Quoc Viet
 * @class ChooseTypeModal
 */

export interface ChooseTypeModalOptions {
  current?: SQLType | GenerateType;
  isGenerateType: boolean;
}

@Component({
  selector: 'moc-choose-type-modal',
  templateUrl: 'choose-type.modal.html',
  styleUrls: ['choose-type.modal.scss']
})
export class ChooseTypeModal extends AbstractModal implements OnInit {
  override options: ChooseTypeModalOptions;
  formControl: FormControl;
  types: any[];
  categories: Category[];
  currentCategory: Category | undefined;

  constructor(
    injector: Injector,
    private generateTypeService: GenerateTypeService,
    private sqlTypeService: SQLTypeService,
    private categoryService: CategoryService
  ) {
    super(injector);
    this.formControl = this.formBuilder.control(undefined, []);
    this.formControl.valueChanges.subscribe((value: string) => {
      if (value) {
        if (this.options?.isGenerateType) {
          this.categories = this.categories.filter((category: Category): boolean =>
            !!category.generateTypes
              .filter((generateType: GenerateType) => generateType.code.toUpperCase().includes(value.toUpperCase()))
              .length);
          this.types = this.categories[0]?.generateTypes;
          this.currentCategory = undefined;
        } else {
          this.types = this.appConfigService.sqlTypes.filter((sqlType: SQLType): boolean => sqlType.code.toUpperCase().includes(value.toUpperCase()));
        }
      } else {
        // reset value
        this.ngOnInit();
      }
    });
  }

  ngOnInit(): void {
    if (this.options?.isGenerateType) {
      this.categories = this.appConfigService.categories;
      if (!this.categories.length) {
        this.categoryService.getCategories().subscribe((categories: Category[]): void => {
          this.categories = categories;
          this.appConfigService.categories = categories;
          const category: Category | undefined = this.categories
            .find((category: Category): boolean => category.generateTypes
              .includes((this.options?.current as GenerateType)));
          this.unShiftIfExist(this.categories, category);
          this.changeCategory(category);
        });
      } else {
        const category: Category | undefined = this.categories
          .find((category: Category): boolean => category.generateTypes
            .includes((this.options?.current as GenerateType)));
        this.unShiftIfExist(this.categories, category);
        this.changeCategory(category);
      }
    } else {
      this.types = this.appConfigService.sqlTypes;
      if (!this.types.length) {
        this.sqlTypeService.getSQLTypes().subscribe((sqlTypes: SQLType[]): void => {
          this.types = sqlTypes;
          this.appConfigService.sqlTypes = sqlTypes;
          this.unShiftIfExist(this.types, this.options?.current);
        });
      } else {
        this.unShiftIfExist(this.types, this.options?.current);
      }
    }
  }

  changeCategory(category?: Category): void {
    if (category) {
      this.types = category.generateTypes;
      this.currentCategory = category;
    } else {
      this.types = this.categories.map((category: Category) => category.generateTypes)
        .reduce((previous: GenerateType[], current: GenerateType[]) => [...previous, ...current], []);
      this.currentCategory = undefined;
    }
    if (this.options?.current) {
      this.unShiftIfExist(this.types, this.options?.current);
    }
  }

  unShiftIfExist(array: any[], element: any): void {
    if (!element || !array?.length) {
      return;
    }
    array.splice(array.indexOf(element), 1);
    array.unshift(element);
  }

  get numberOfGenerateTypes(): number {
    return this.categories?.map((category: Category) => category.generateTypes)
      .map((generateTypes: GenerateType[]) => generateTypes.length)
      .reduce((previous: number, current: number) => previous + current, 0);
  }

}
