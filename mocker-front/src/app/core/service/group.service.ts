import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { GroupModel } from '@core/domain/model/group.model';
import { AbstractService } from '@core/service/abstract.service';
import { HttpMethodEnum } from '@core/domain/enum/http-method.enum';

/**
 * @author Do Quoc Viet
 */

@Injectable({
  providedIn: 'root'
})
export class GroupService extends AbstractService<GroupModel> {
  static GROUP_API = 'group';

  getGroupsWithAccess(): Observable<GroupModel[]> {
    return this.request<GroupModel[]>(HttpMethodEnum.GET, `${this.API_URL}/${GroupService.GROUP_API}`);
  }

  getGroup(id: string): Observable<GroupModel> {
    return this.get(`${this.API_URL}/${GroupService.GROUP_API}/${id}`);
  }

  saveOrUpdate(group: GroupModel): Observable<string> {
    return this.request<string>(HttpMethodEnum.POST, `${this.API_URL}/${GroupService.GROUP_API}`, group);
  }

  deleteGroup(id: string): Observable<string> {
    return this.request<string>(HttpMethodEnum.DELETE, `${this.API_URL}/${GroupService.GROUP_API}/${id}`);
  }
}
