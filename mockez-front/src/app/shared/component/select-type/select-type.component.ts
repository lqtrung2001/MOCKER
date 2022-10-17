import { Component, EventEmitter, Input, OnInit, Output } from '@angular/core';
import { Category } from '@core/model/Category.modal';
import { CategoryService } from '@core/service/category.service';
import { SQLType } from '@core/model/SQLType.modal';
import { SQLTypeService } from '@core/service/sql-type.service';
import { SelectTypeOption } from '@app/general/component/general/general.component';
import { GenerateType } from '@core/model/GenerateType.modal';

@Component({
  selector: 'app-select-type',
  templateUrl: './select-type.component.html',
  styleUrls: ['./select-type.component.scss']
})
export class SelectTypeComponent implements OnInit {

  @Input() selectTypeOption!: SelectTypeOption;
  @Output() exitEventEmitter: EventEmitter<any> = new EventEmitter();
  @Output() selectedTypeEventEmitter: EventEmitter<SQLType | GenerateType> = new EventEmitter<SQLType | GenerateType>();

  categories: Category[] = [];
  data: SQLType[] | GenerateType[] = [];
  categoryActiveId: string = '';

  constructor(
    private categoryService: CategoryService,
    private sqlTypeService: SQLTypeService
  ) {
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
            this.categoryService.getGenerateTypesCount(category.id)
              .subscribe((generateTypeCount: number) => {
                const categoryGenCount: Category = { ...category, generateTypeCount };
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
          this.data = category.generateTypes!.map((type: GenerateType) => ({
            ...type,
            description: type.description += 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'
          }));
        });
    }
  }

  categoryOnClick(id: string) {
    this.categoryService.getCategory(id)
      .subscribe((category: Category) => {
        this.categoryActiveId = id;
        this.data = category.generateTypes!.map((type: GenerateType) => ({
          ...type,
          description: type.description += 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'
        }));
      });
  }

  typeOnClick(type: SQLType | GenerateType) {
    this.selectedTypeEventEmitter.emit(type);
  }

  allOnClick(): void {

  }
}
