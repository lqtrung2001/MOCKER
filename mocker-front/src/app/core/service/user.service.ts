import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { UserModel } from '@core/domain/model/user.model';
import { AbstractService } from '@core/service/abstract.service';
import { HttpMethodEnum } from '@core/domain/enum/http-method.enum';

/**
 * @author Do Quoc Viet
 */

@Injectable({
  providedIn: 'root'
})
export class UserService extends AbstractService<UserModel> {
  static USER_API = 'user';

  findOneByUsername(username: string): Observable<UserModel> {
    return this.get(`${this.API_URL}/${UserService.USER_API}/find-by-username?username=${username}`);
  }

  saveOrUpdate(user: UserModel): Observable<string> {
    return this.request<string>(HttpMethodEnum.PUT, `${this.API_URL}/${UserService.USER_API}`, user);
  }

  getUser(id: string): Observable<UserModel> {
    return this.get(`${this.API_URL}/${UserService.USER_API}/${id}`);
  }

  getUsers(): Observable<UserModel[]> {
    return this.request<UserModel[]>(HttpMethodEnum.GET, `${this.API_URL}/${UserService.USER_API}`);
  }

  changePassword(userId: string, currentPassword: string, newPassword: string): Observable<UserModel> {
    return this.put(`${this.API_URL}/${UserService.USER_API}/change-password`, {
      userId,
      currentPassword,
      newPassword
    });
  }
}
