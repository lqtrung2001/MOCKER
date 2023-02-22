import { Component, Injector } from '@angular/core';
import { AbstractModal } from '@core/class/abstract.modal';
import { FormControl } from '@angular/forms';
import { GenerateType } from '@core/model/generate-type';
import { GenerateTypeService } from '@core/service/generate-type.service';
import { CategoryService } from '@core/service/category.service';
import { Category } from '@core/model/category';
import { SQLType } from '@core/model/sql-type';

/**
 * @author Do Quoc Viet
 * @class ChooseTypeModal
 */

export interface ChooseTypeModalOptions {
  type?: SQLType | GenerateType;
}

type Controls = {}

@Component({
  selector: 'moc-choose-type-modal',
  templateUrl: 'choose-type.modal.html',
  styleUrls: ['choose-type.modal.scss']
})
export class ChooseTypeModal extends AbstractModal {
  override options: ChooseTypeModalOptions;
  searchFC: FormControl;
  types: GenerateType[] = [];
  categories: Category[] = [];
  currentCategory: Category;

  constructor(
    injector: Injector,
    private generateTypeService: GenerateTypeService,
    private categoryService: CategoryService
  ) {
    super(injector);
    this.searchFC = this.formBuilder.control(undefined, []);
    // this.types.push(...this.appConfigService.generateTypes);
    // if (!this.types.length) {
    //   this.generateTypeService.getGenerateTypes().subscribe((types: GenerateType[]): void => {
    //     this.types = types;
    //     this.appConfigService.generateTypes = this.types;
    //   });
    // }
    // // this.categories.push(...this.appConfigService.categories);
    // if (!this.categories.length) {
    //   this.categoryService.getCategories().subscribe((categories: Category[]): void => {
    //     this.categories = categories;
    //     this.appConfigService.categories = this.categories;
    //   });
    // }
  }

  choose(type: GenerateType | SQLType): void {
    this.close(type);
  }

}
