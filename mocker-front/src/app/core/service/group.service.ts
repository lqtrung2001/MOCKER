import { Injectable } from '@angular/core';
import { GroupModel } from '@core/domain/model/group.model';
import { AbstractService } from '@core/service/abstract.service';

/**
 * @author Do Quoc Viet
 */

@Injectable({
  providedIn: 'root'
})
export class GroupService extends AbstractService<GroupModel> {
  override ENTITY_URL = 'group';
}
