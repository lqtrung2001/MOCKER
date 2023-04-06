import { Component, Injector, OnInit } from '@angular/core';
import { AbstractModal } from '@core/common/abstract.modal';
import { FormControl } from '@angular/forms';
import { GenerateTypeModel } from '@core/domain/model/entity/generate-type.model';
import { CategoryService } from '@core/service/category.service';
import { CategoryModel } from '@core/domain/model/entity/category.model';
import { SqlTypeModel } from '@core/domain/model/entity/sql-type.model';
import { SQLTypeService } from '@core/service/sql-type.service';
import { StringUtil } from '@core/util/string.util';

/**
 * @author Do Quoc Viet
 */

export interface ChooseTypeModalCloseOptions {
  type: SqlTypeModel | GenerateTypeModel;
  clear: boolean;
}

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
  types: SqlTypeModel[] | GenerateTypeModel[];
  categories: CategoryModel[];
  currentCategory: CategoryModel | undefined;

  constructor(
    injector: Injector,
    private sqlTypeService: SQLTypeService,
    private categoryService: CategoryService
  ) {
    super(injector);
    this.formControl = this.formBuilder.control(undefined, []);
    this.formControl.valueChanges.subscribe((value: string): void => {
      if (value) {
        if (this.options?.isGenerateType) {
          this.categories = this.categories.filter((category: CategoryModel): boolean =>
            !!category.generateTypes
              .filter((generateType: GenerateTypeModel): boolean => generateType.code.toUpperCase().includes(value.toUpperCase()))
              .length);
          this.types = this.categories[0]?.generateTypes;
          this.currentCategory = undefined;
        } else {
          this.types = this.appConfigService.sqlTypes
            .filter((sqlType: SqlTypeModel): boolean => sqlType.code.toUpperCase().includes(value.toUpperCase()));
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
              .map((generateType: GenerateTypeModel): string => generateType.id)
              .includes(this.options?.current?.id || StringUtil.EMPTY));
          this.unShiftIfExist(this.categories, category);
          this.changeCategory(category);
          if (this.options?.current) {
            this.unShiftIfExist(this.types, this.options?.current);
          }
        });
      } else {
        const category: CategoryModel | undefined = this.categories
          .find((category: CategoryModel): boolean => category.generateTypes
            .map((generateType: GenerateTypeModel): string => generateType.id)
            .includes(this.options?.current?.id || StringUtil.EMPTY));
        this.unShiftIfExist(this.categories, category);
        this.changeCategory(category);
        if (this.options?.current) {
          this.unShiftIfExist(this.types, this.options?.current);
        }
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
      this.types = this.categories
        .map((category: CategoryModel): GenerateTypeModel[] => category.generateTypes)
        .reduce((previous: GenerateTypeModel[], current: GenerateTypeModel[]) => [...previous, ...current], []);
      this.currentCategory = undefined;
    }
  }

  unShiftIfExist(array: any[], element: CategoryModel | GenerateTypeModel | SqlTypeModel | undefined): void {
    if (!element || !array?.length) {
      return;
    }
    element = array.find((obj: CategoryModel | GenerateTypeModel | SqlTypeModel): boolean => obj.id === element?.id);
    array.splice(array.indexOf(element), 1);
    array.unshift(element);
  }

  get numberOfGenerateTypes(): number {
    return this.categories?.map((category: CategoryModel): GenerateTypeModel[] => category.generateTypes)
      .map((generateTypes: GenerateTypeModel[]): number => generateTypes.length)
      .reduce((previous: number, current: number): number => previous + current, 0);
  }

}
