import { Injectable, Injector } from '@angular/core';
import { Observable } from 'rxjs';
import { environment } from '@environment/environment';
import { Table } from '@core/model/table';
import { AppHttpService } from '@core/service/app-http.service';
import { HttpMethod } from '@core/class/enum/http-method';

/**
 * @author Do Quoc Viet
 * @class GenerateService
 */

@Injectable({
  providedIn: 'root'
})
export class GenerateService extends AppHttpService<any> {
  constructor(
    injector: Injector
  ) {
    super(injector);
  }

  generateWithTableId(id: string, row: number): Observable<any[]> {
    return this.request<any[]>(HttpMethod.POST, `${environment.API_URL}/generate/${id}`, row);
  }

  generateWithTable(table: Table, row: number): Observable<any[]> {
    return this.request<any[]>(HttpMethod.POST, `${environment.API_URL}/generate?row=${row}`, table);
  }
}
