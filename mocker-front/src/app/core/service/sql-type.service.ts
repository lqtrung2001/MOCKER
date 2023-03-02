import { Injectable, Injector } from '@angular/core';
import { Observable } from 'rxjs';
import { SQLType } from '@core/model/sql-type';
import { environment } from '@environment/environment';
import { AppHttpService } from '@core/service/app-http.service';
import { HttpMethod } from '@core/class/enum/http-method';

/**
 * @author Do Quoc Viet
 * @class SQLTypeService
 */

@Injectable({
  providedIn: 'root'
})
export class SQLTypeService extends AppHttpService<SQLType> {
  constructor(
    injector: Injector
  ) {
    super(injector);
  }

  getSQLTypes(): Observable<SQLType[]> {
    return this.request<SQLType[]>(HttpMethod.GET, `${environment.API_URL}/sql-type`);
  }
}
