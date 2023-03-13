import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { UserModel } from '@core/domain/model/user.model';
import { AbstractService } from '@core/service/abstract.service';

/**
 * @author Do Quoc Viet
 */

@Injectable({
  providedIn: 'root'
})
export class UserService extends AbstractService<UserModel> {
  override ENTITY_URL = 'user';

  findOneByUsername(username: string): Observable<UserModel> {
    return this.get(`${this.API_URL}/${this.ENTITY_URL}/find-by-username?username=${username}`);
  }

}
