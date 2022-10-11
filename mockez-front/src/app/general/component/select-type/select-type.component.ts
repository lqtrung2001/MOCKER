import { Component, EventEmitter, Input, OnInit, Output } from '@angular/core';
import { Category } from '@core/model/Category.modal';
import { CategoryService } from '@core/service/category.service';
import { data } from 'autoprefixer';

@Component({
  selector: 'app-select-type',
  templateUrl: './select-type.component.html',
  styleUrls: ['./select-type.component.scss']
})
export class SelectTypeComponent implements OnInit {

  @Output() exitEventEmitter: EventEmitter<string> = new EventEmitter<string>();
  categories: { category: Category, generateTypesCount: number }[] = [];

  constructor(private categoryService: CategoryService) {
    categoryService.getCategories().subscribe((categories: Category[]) => {
      categories.forEach((category: Category) => {
        this.categoryService.getGenerateTypesCount(category.id).subscribe((count: number) => {
          if (this.categories.length < 10) {
            this.categories.push({ category: category, generateTypesCount: count });
          }
        });
      });
    });

  }

  ngOnInit(): void {

  }
}
