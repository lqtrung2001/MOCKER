import { Injectable } from '@angular/core';
import { AbstractService } from '@core/service/abstract.service';
import { GroupMemberModel } from '@core/domain/model/entity/group-member.model';
import { Observable } from 'rxjs';
import { GroupMemberPkModel } from '@core/domain/model/entity/composite_key/group-member-pk.model';
import { HttpMethodEnum } from '@core/domain/enum/http-method.enum';

/**
 * @author Do Quoc Viet
 */

@Injectable({
  providedIn: 'root'
})
export class GroupMemberService extends AbstractService<GroupMemberModel> {
  override ENTITY_URL: string = 'group-member';

  override deleteEntity(groupMemberPkModel: GroupMemberPkModel): Observable<GroupMemberModel> {
    return this.request<GroupMemberModel>(HttpMethodEnum.DELETE, `${this.API_URL}/${this.ENTITY_URL}`, groupMemberPkModel);
  }

  getGroupMembersByGroupId(groupId: string): Observable<GroupMemberModel[]> {
    return this.request<GroupMemberModel[]>(HttpMethodEnum.GET, `${this.API_URL}/${this.ENTITY_URL}?groupId=${groupId}`);
  }

}
