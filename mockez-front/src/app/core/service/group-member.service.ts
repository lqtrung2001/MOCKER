import { Injectable } from '@angular/core';
import { environment } from '@environment/environment';
import { Observable } from 'rxjs';
import { HttpClient } from '@angular/common/http';
import { GroupMemberPk } from '@core/model/composite_key/group-member-pk';

@Injectable({
  providedIn: 'root'
})
export class GroupMemberService {

  static GROUP_MEMBER_API = environment.apiUrl + '/group-member';

  constructor(
    private httpClient: HttpClient
  ) {
  }

  delete(id: GroupMemberPk): Observable<GroupMemberPk> {
    return this.httpClient.delete<GroupMemberPk>(`${GroupMemberService.GROUP_MEMBER_API}`, {
      body: id
    });
  }

  addMember(groupMemberPk: GroupMemberPk): Observable<GroupMemberPk> {
    return this.httpClient.post<GroupMemberPk>(`${GroupMemberService.GROUP_MEMBER_API}`, {
      groupId: groupMemberPk.groupId,
      userId: groupMemberPk.userId
    });
  }

}
