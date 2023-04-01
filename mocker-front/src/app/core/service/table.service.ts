import { Injectable } from '@angular/core';
import { TableModel } from '@core/domain/model/entity/table.model';
import { AbstractService } from '@core/service/abstract.service';

/**
 * @author Do Quoc Viet
 */

@Injectable({
  providedIn: 'root'
})
export class TableService extends AbstractService<TableModel> {
  override ENTITY_URL: string = 'table';
}
