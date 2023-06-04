import { AbstractService } from '@core/service/abstract.service';
import { RoleEnum } from '@core/domain/enum/role.enum';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';

/**
 * @author Do Quoc Viet
 */

@Injectable({
  providedIn: 'root'
})
export class PermissionService extends AbstractService<RoleEnum> {
  override ENTITY_URL: string = 'permission';

  getPermission(entity: 'group' | 'project' | 'schema', id: string): Observable<RoleEnum> {
    return this.get(`${this.API_URL}/${this.ENTITY_URL}/${entity}/${id}`);
  }

}
