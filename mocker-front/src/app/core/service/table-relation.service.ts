import { AbstractService } from '@core/service/abstract.service';
import { TableRelationModel } from '@core/domain/model/entity/table-relation.model';
import { Injectable, Injector } from '@angular/core';

/**
 * @author Do Quoc Viet
 */

@Injectable({
  providedIn: 'root'
})
export class TableRelationService extends AbstractService<TableRelationModel> {
  override ENTITY_URL: string = 'table-relation';

  constructor(injector: Injector) {
    super(injector);
  }

}
