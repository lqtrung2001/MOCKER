import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Table } from '@core/model/table';
import { environment } from '@environment/environment';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Injectable({
  providedIn: 'root'
})
export class TableService {

  static TABLE = 'table';

  constructor(
    private httpClient: HttpClient
  ) {
  }

  getTable(id: string): Observable<Table> {
    return this.httpClient.get<Table>(`${environment.apiUrl}/${TableService.TABLE}/${id}`);
  }

  getTablesBySchema(schemaId: string): Observable<Table[]> {
    return this.httpClient.get<Table[]>(`${environment.apiUrl}/${TableService.TABLE}?schemaId=${schemaId}`);
  }

  saveOrUpdate(table: Table): Observable<string> {
    return this.httpClient.post<string>(`${environment.apiUrl}/${TableService.TABLE}`, table);
  }

  delete(id: string): Observable<string> {
    return this.httpClient.delete<string>(`${environment.apiUrl}/${TableService.TABLE}/${id}`);
  }

}
