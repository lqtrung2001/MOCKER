import { Injectable, Injector } from '@angular/core';
import { Category } from '@core/model/category';
import { Observable } from 'rxjs';
import { environment } from '@environment/environment';
import { AppHttpService } from '@core/service/app-http.service';
import { HttpMethod } from '@core/class/enum/http-method';

/**
 * @author Do Quoc Viet
 * @class CategoryService
 */

@Injectable({
  providedIn: 'root'
})
export class CategoryService extends AppHttpService<Category> {
  constructor(
    injector: Injector
  ) {
    super(injector);
  }

  getCategories(): Observable<Category[]> {
    return this.request<Category[]>(HttpMethod.GET, `${environment.API_URL}/category`);
  }

}
