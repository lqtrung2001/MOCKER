import { Injectable } from '@angular/core';
import { SqlTypeModel } from '@core/domain/model/entity/sql-type.model';
import { AbstractService } from '@core/service/abstract.service';

/**
 * @author Do Quoc Viet
 */

@Injectable({
  providedIn: 'root'
})
export class SQLTypeService extends AbstractService<SqlTypeModel> {
  override ENTITY_URL = 'sql-type';
}
