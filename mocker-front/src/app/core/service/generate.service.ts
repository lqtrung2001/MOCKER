import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { environment } from '@environment/environment';
import { TableModel } from '@core/domain/model/table.model';
import { AbstractService } from '@core/service/abstract.service';
import { HttpMethodEnum } from '@core/domain/enum/http-method.enum';

/**
 * @author Do Quoc Viet
 * @class GenerateService
 */

@Injectable({
  providedIn: 'root'
})
export class GenerateService extends AbstractService<any> {
  static GENERATE_API = 'generate';

  generateWithTableId(id: string, row: number): Observable<any[]> {
    return this.request<any[]>(HttpMethodEnum.POST, `${environment.API_URL}/${GenerateService.GENERATE_API}/${id}`, row);
  }

  generateWithTable(table: TableModel, row: number): Observable<any[]> {
    return this.request<any[]>(HttpMethodEnum.POST, `${environment.API_URL}/${GenerateService.GENERATE_API}?row=${row}`, table);
  }
}
