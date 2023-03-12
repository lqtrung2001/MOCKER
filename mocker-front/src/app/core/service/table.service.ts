import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { TableModel } from '@core/domain/model/table.model';
import { AbstractService } from '@core/service/abstract.service';

/**
 * @author Do Quoc Viet
 */

@Injectable({
  providedIn: 'root'
})
export class TableService extends AbstractService<TableModel> {
  static TABLE = 'table';

  getTable(id: string): Observable<TableModel> {
    return this.httpClient.get<TableModel>(`${this.API_URL}/${TableService.TABLE}/${id}`);
  }

  getTablesBySchema(schemaId: string): Observable<TableModel[]> {
    return this.httpClient.get<TableModel[]>(`${this.API_URL}/${TableService.TABLE}?schemaId=${schemaId}`);
  }

  saveOrUpdate(table: TableModel): Observable<TableModel> {
    return this.post(`${this.API_URL}/${TableService.TABLE}`, table);
  }

  delete1(id: string): Observable<string> {
    return this.httpClient.delete<string>(`${this.API_URL}/${TableService.TABLE}/${id}`);
  }

}
