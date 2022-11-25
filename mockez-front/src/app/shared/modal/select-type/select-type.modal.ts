import { Component, OnInit } from '@angular/core';
import { CategoryService } from '@core/service/category.service';
import { SQLTypeService } from '@core/service/sql-type.service';
import { Modal } from '@shared/modal/modal-service/model/modal.model';
import { SQLType } from '@core/model/sql-type';
import { GenerateType } from '@core/model/generate-type';
import { Category } from '@core/model/category';

export interface SelectTypeOption {
  isSQLType: boolean;
  type: SQLType | GenerateType;
}

@Component({
  selector: 'app-select-type',
  templateUrl: './select-type.modal.html',
  styleUrls: ['./select-type.modal.scss']
})
export class SelectTypeModal extends Modal implements OnInit {

  categories: Category[] = [];
  data: any = [];
  categoryActiveId: string = '';
  selectTypeOption!: SelectTypeOption;

  constructor(
    private categoryService: CategoryService,
    private sqlTypeService: SQLTypeService
  ) {
    super();
  }

  ngOnInit(): void {
    const isSQLType: boolean = this.selectTypeOption.isSQLType;
    if (isSQLType) {
      this.sqlTypeService.getSQLTypes()
        .subscribe((sqlType: SQLType[]) => {
          this.data = sqlType;
        });
    } else {
      const generateType: GenerateType = this.selectTypeOption.type as GenerateType;
      this.categoryActiveId = generateType.category?.id!;
      this.categoryService.getCategories()
        .subscribe((categories: Category[]) => {
          categories.forEach((category: Category) => {
            this.categoryService.getGenerateTypesCount(category.id!)
              .subscribe((generateTypeCount: number) => {
                const categoryGenCount: Category = category;
                if (category.id === this.categoryActiveId) {
                  this.categories.unshift(categoryGenCount);
                } else {
                  this.categories.push(categoryGenCount);
                }
              });
          });
        });
      this.categoryService.getCategory(this.categoryActiveId)
        .subscribe((category: Category) => {
          this.data = category.generateTypes!;
        });
    }
  }

  categoryOnClick(id: string) {
    this.categoryService.getCategory(id)
      .subscribe((category: Category) => {
        this.categoryActiveId = id;
        this.data = category.generateTypes!;
      });
  }

  typeOnClick(type: SQLType | GenerateType) {
    this.modalInstance.close(type);
  }

  allOnClick(): void {

  }

  onInjectInputs(input: any): void {
    this.selectTypeOption = input;
  }
}
