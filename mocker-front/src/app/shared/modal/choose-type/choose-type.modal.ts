import { Component, Injector, OnInit } from '@angular/core';
import { AbstractModal } from '@core/common/abstract.modal';
import { FormControl } from '@angular/forms';
import { GenerateTypeModel } from '@core/domain/model/generate-type.model';
import { GenerateTypeService } from '@core/service/generate-type.service';
import { CategoryService } from '@core/service/category.service';
import { CategoryModel } from '@core/domain/model/category.model';
import { SqlTypeModel } from '@core/domain/model/sql-type.model';
import { SQLTypeService } from '@core/service/sql-type.service';

/**
 * @author Do Quoc Viet
 * @class ChooseTypeModal
 */

export interface ChooseTypeModalOptions {
  current?: SqlTypeModel | GenerateTypeModel;
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
  categories: CategoryModel[];
  currentCategory: CategoryModel | undefined;

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
          this.categories = this.categories.filter((category: CategoryModel): boolean =>
            !!category.generateTypes
              .filter((generateType: GenerateTypeModel) => generateType.code.toUpperCase().includes(value.toUpperCase()))
              .length);
          this.types = this.categories[0]?.generateTypes;
          this.currentCategory = undefined;
        } else {
          this.types = this.appConfigService.sqlTypes.filter((sqlType: SqlTypeModel): boolean => sqlType.code.toUpperCase().includes(value.toUpperCase()));
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
        this.categoryService.getEntities().subscribe((categories: CategoryModel[]): void => {
          this.categories = categories;
          this.appConfigService.categories = categories;
          const category: CategoryModel | undefined = this.categories
            .find((category: CategoryModel): boolean => category.generateTypes
              .includes((this.options?.current as GenerateTypeModel)));
          this.unShiftIfExist(this.categories, category);
          this.changeCategory(category);
        });
      } else {
        const category: CategoryModel | undefined = this.categories
          .find((category: CategoryModel): boolean => category.generateTypes
            .includes((this.options?.current as GenerateTypeModel)));
        this.unShiftIfExist(this.categories, category);
        this.changeCategory(category);
      }
    } else {
      this.types = this.appConfigService.sqlTypes;
      if (!this.types.length) {
        this.sqlTypeService.getEntities().subscribe((sqlTypes: SqlTypeModel[]): void => {
          this.types = sqlTypes;
          this.appConfigService.sqlTypes = sqlTypes;
          this.unShiftIfExist(this.types, this.options?.current);
        });
      } else {
        this.unShiftIfExist(this.types, this.options?.current);
      }
    }
  }

  changeCategory(category?: CategoryModel): void {
    if (category) {
      this.types = category.generateTypes;
      this.currentCategory = category;
    } else {
      this.types = this.categories.map((category: CategoryModel) => category.generateTypes)
        .reduce((previous: GenerateTypeModel[], current: GenerateTypeModel[]) => [...previous, ...current], []);
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
    return this.categories?.map((category: CategoryModel) => category.generateTypes)
      .map((generateTypes: GenerateTypeModel[]) => generateTypes.length)
      .reduce((previous: number, current: number) => previous + current, 0);
  }

}
