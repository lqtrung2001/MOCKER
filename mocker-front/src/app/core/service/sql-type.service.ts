import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { SqlTypeModel } from '@core/domain/model/sql-type.model';
import { AbstractService } from '@core/service/abstract.service';
import { HttpMethodEnum } from '@core/domain/enum/http-method.enum';

/**
 * @author Do Quoc Viet
 * @class SQLTypeService
 */

@Injectable({
  providedIn: 'root'
})
export class SQLTypeService extends AbstractService<SqlTypeModel> {
  static SQL_TYPE_API = 'sql-type';

  getSQLTypes(): Observable<SqlTypeModel[]> {
    return this.request<SqlTypeModel[]>(HttpMethodEnum.GET, `${this.API_URL}/${SQLTypeService.SQL_TYPE_API}`);
  }
}
