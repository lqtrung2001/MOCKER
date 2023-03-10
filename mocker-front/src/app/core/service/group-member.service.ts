import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { GroupMemberPkModel } from '@core/domain/model/composite_key/group-member-pk.model';
import { AbstractService } from '@core/service/abstract.service';
import { GroupMemberModel } from '@core/domain/model/group-member.model';
import { HttpMethodEnum } from '@core/domain/enum/http-method.enum';

/**
 * @author Do Quoc Viet
 */

@Injectable({
  providedIn: 'root'
})
export class GroupMemberService extends AbstractService<GroupMemberModel> {
  static GROUP_MEMBER_API = 'group-member';

  deleteGroupMember(id: GroupMemberPkModel): Observable<GroupMemberPkModel> {
    return this.request<GroupMemberPkModel>(HttpMethodEnum.DELETE, `${this.API_URL}/${GroupMemberService.GROUP_MEMBER_API}`, {
      body: id
    });
  }

  addMember(groupMemberPk: GroupMemberPkModel): Observable<GroupMemberPkModel> {
    return this.request<GroupMemberPkModel>(HttpMethodEnum.POST, `${this.API_URL}/${GroupMemberService.GROUP_MEMBER_API}`, {
      groupId: groupMemberPk.groupId,
      userId: groupMemberPk.userId
    });
  }

}
