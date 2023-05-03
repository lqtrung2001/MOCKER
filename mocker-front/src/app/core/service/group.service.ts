import { Injectable } from '@angular/core';
import { GroupModel } from '@core/domain/model/entity/group.model';
import { AbstractService } from '@core/service/abstract.service';

/**
 * @author Do Quoc Viet
 */

@Injectable({
  providedIn: 'root'
})
export class GroupService extends AbstractService<GroupModel> {
  override ENTITY_URL: string = 'group';

}
