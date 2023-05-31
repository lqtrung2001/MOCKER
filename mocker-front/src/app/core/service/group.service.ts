import { Injectable } from '@angular/core';
import { GroupModel } from '@core/domain/model/entity/group.model';
import { AbstractService } from '@core/service/abstract.service';
import { RoleEnum } from '@core/domain/enum/role.enum';
import { HttpMethodEnum } from '@core/domain/enum/http-method.enum';
import { Observable } from 'rxjs';
import { StringUtil } from '@core/util/string.util';

/**
 * @author Do Quoc Viet
 */

@Injectable({
  providedIn: 'root'
})
export class GroupService extends AbstractService<GroupModel> {
  override ENTITY_URL: string = 'group';

  getGroups(roles?: RoleEnum[]): Observable<GroupModel[]> {
    return this.request<GroupModel[]>(HttpMethodEnum.GET, `${this.API_URL}/${this.ENTITY_URL}?${roles ? `roles=${roles.join(',')}` : StringUtil.EMPTY}`);
  }

}
