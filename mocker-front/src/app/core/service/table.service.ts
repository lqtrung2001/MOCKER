import { Injectable, Injector } from '@angular/core';
import { Observable } from 'rxjs';
import { Table } from '@core/model/table';
import { environment } from '@environment/environment';
import { AppHttpService } from '@core/service/app-http.service';

/**
 * @author Do Quoc Viet
 */

@Injectable({
  providedIn: 'root'
})
export class TableService extends AppHttpService<Table> {
  static TABLE = 'table';

  constructor(
    injector: Injector
  ) {
    super(injector);
  }

  getTable(id: string): Observable<Table> {
    return this.httpClient.get<Table>(`${environment.API_URL}/${TableService.TABLE}/${id}`);
  }

  getTablesBySchema(schemaId: string): Observable<Table[]> {
    return this.httpClient.get<Table[]>(`${environment.API_URL}/${TableService.TABLE}?schemaId=${schemaId}`);
  }

  saveOrUpdate(table: Table): Observable<Table> {
    return this.post(`${environment.API_URL}/${TableService.TABLE}`, table);
  }

  delete1(id: string): Observable<string> {
    return this.httpClient.delete<string>(`${environment.API_URL}/${TableService.TABLE}/${id}`);
  }

}
