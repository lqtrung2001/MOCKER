import { Injectable } from '@angular/core';
import { Category } from '@core/model/Category.modal';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class CategoryService {

  public getCategories(): Observable<Category[]> {
    return;
  }

  public getCategory(id: string): Observable<Category> {
    return;
  }

}
