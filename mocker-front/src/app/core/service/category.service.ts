import { Injectable } from '@angular/core';
import { Category } from '@core/model/category';
import { Observable } from 'rxjs';
import { HttpClient } from '@angular/common/http';
import { environment } from '@environment/environment';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Injectable({
  providedIn: 'root'
})
export class CategoryService {

  constructor(
    private httpClient: HttpClient
  ) {
  }

  getCategories(): Observable<Category[]> {
    return this.httpClient.get<Category[]>(`${environment.API_URL}/category`);
  }

  getCategory(id: string): Observable<Category> {
    return this.httpClient.get<Category>(`${environment.API_URL}/category/${id}`);
  }

  getGenerateTypesCount(id: string): Observable<number> {
    return this.httpClient.get<number>(`${environment.API_URL}/category/${id}/generate-types/count`);
  }
}
