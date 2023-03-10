import { Injectable } from '@angular/core';
import { CategoryModel } from '@core/domain/model/category.model';
import { Observable } from 'rxjs';
import { AbstractService } from '@core/service/abstract.service';
import { HttpMethodEnum } from '@core/domain/enum/http-method.enum';

/**
 * @author Do Quoc Viet
 */

@Injectable({
  providedIn: 'root'
})
export class CategoryService extends AbstractService<CategoryModel> {
  static CATEGORY_API = 'category';

  getCategories(): Observable<CategoryModel[]> {
    return this.request<CategoryModel[]>(HttpMethodEnum.GET, `${this.API_URL}/${CategoryService.CATEGORY_API}`);
  }

}
