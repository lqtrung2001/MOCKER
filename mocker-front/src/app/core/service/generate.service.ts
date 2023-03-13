import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { TableModel } from '@core/domain/model/table.model';
import { AbstractService } from '@core/service/abstract.service';
import { HttpMethodEnum } from '@core/domain/enum/http-method.enum';

/**
 * @author Do Quoc Viet
 */

@Injectable({
  providedIn: 'root'
})
export class GenerateService extends AbstractService<any> {
  override ENTITY_URL = 'generate';

  generateWithTable(table: TableModel, row: number): Observable<any[]> {
    return this.request<any[]>(HttpMethodEnum.POST, `${this.API_URL}/${this.ENTITY_URL}?row=${row}`, table);
  }
}
