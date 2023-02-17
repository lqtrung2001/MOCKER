import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { SQLType } from '@core/model/sql-type';
import { HttpClient } from '@angular/common/http';
import { environment } from '@environment/environment';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Injectable({
  providedIn: 'root'
})
export class SQLTypeService {

  constructor(
    private httpClient: HttpClient
  ) {
  }

  getSQLTypes(): Observable<SQLType[]> {
    return this.httpClient.get<SQLType[]>(`${environment.API_URL}/sql-type`);
  }
}
