import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { UserModel } from '@core/domain/model/entity/user.model';
import { AbstractService } from '@core/service/abstract.service';
import { HttpMethodEnum } from '@core/domain/enum/http-method.enum';

/**
 * @author Do Quoc Viet
 */

@Injectable({
  providedIn: 'root'
})
export class UserService extends AbstractService<UserModel> {
  override ENTITY_URL: string = 'user';

  findOneByUsername(username: string): Observable<UserModel> {
    return this.get(`${this.API_URL}/${this.ENTITY_URL}/find-by-username?username=${username}`);
  }

  findByCriteria(value: string): Observable<UserModel[]> {
    // return this.request<UserModel[]>(HttpMethodEnum.GET, `${this.API_URL}/${this.ENTITY_URL}/fint-by-criteria?criteria=${value}`);
    return this.getEntities();
  }

}
