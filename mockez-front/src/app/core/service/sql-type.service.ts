import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { SQLType } from '@core/model/SQLType.modal';

@Injectable({
  providedIn: 'root'
})
export class SQLTypeService {

  public getSQLTypes(): Observable<SQLType[]> {
    return;
  }
}
