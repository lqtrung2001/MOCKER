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

  public getTable(id: string): Observable<Table> {
    return this.httpClient.get<Table>(`${environment.apiUrl}/${TableService.TABLE}/${id}`);
  }

  public getTablesBySchema(schemaId: string): Observable<Table[]> {
    return this.httpClient.get<Table[]>(`${environment.apiUrl}/${TableService.TABLE}?schemaId=${schemaId}`);
  }

}
