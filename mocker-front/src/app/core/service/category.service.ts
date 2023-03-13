import { Injectable } from '@angular/core';
import { CategoryModel } from '@core/domain/model/category.model';
import { AbstractService } from '@core/service/abstract.service';

/**
 * @author Do Quoc Viet
 */

@Injectable({
  providedIn: 'root'
})
export class CategoryService extends AbstractService<CategoryModel> {
  override ENTITY_URL = 'category';
}
