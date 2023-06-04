import { Injectable } from '@angular/core';
import { AbstractService } from '@core/service/abstract.service';
import { GroupMemberModel } from '@core/domain/model/entity/group-member.model';
import { Observable } from 'rxjs';
import { GroupMemberPkModel } from '@core/domain/model/entity/composite_key/group-member-pk.model';
import { HttpMethodEnum } from '@core/domain/enum/http-method.enum';
import { RoleEnum } from '@core/domain/enum/role.enum';

/**
 * @author Do Quoc Viet
 */

@Injectable({
  providedIn: 'root'
})
export class GroupMemberService extends AbstractService<GroupMemberModel> {
  override ENTITY_URL: string = 'group-member';

  override deleteEntity(groupMemberPkModel: GroupMemberPkModel): Observable<GroupMemberModel> {
    return this.request<GroupMemberModel>(HttpMethodEnum.POST, `${this.API_URL}/${this.ENTITY_URL}/delete-group-member`, groupMemberPkModel);
  }

  getGroupMembersByGroupId(groupId: string, roles: RoleEnum[] = []): Observable<GroupMemberModel[]> {
    return this.request<GroupMemberModel[]>(HttpMethodEnum.GET, `${this.API_URL}/${this.ENTITY_URL}?groupId=${groupId}&roles=${roles.join(',')}`);
  }

}
