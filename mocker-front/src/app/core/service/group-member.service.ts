import { Injectable } from '@angular/core';
import { AbstractService } from '@core/service/abstract.service';
import { GroupMemberModel } from '@core/domain/model/group-member.model';

/**
 * @author Do Quoc Viet
 */

@Injectable({
  providedIn: 'root'
})
export class GroupMemberService extends AbstractService<GroupMemberModel> {
  override ENTITY_URL = 'group-member';

}
