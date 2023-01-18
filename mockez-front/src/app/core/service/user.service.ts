import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { User } from '@core/model/user';
import { AppHttpService } from '@core/service/app-http.service';
import { HttpMethod } from '@core/class/enum/http-method';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Injectable({
  providedIn: 'root'
})
export class UserService extends AppHttpService<User> {

  static USER_API = 'user';

  findOneByUsername(username: string): Observable<User> {
    return this.get(`${this.API_URL}/${UserService.USER_API}/find-by-username?username=${username}`);
  }

  saveOrUpdate(user: User): Observable<string> {
    return this.request<string>(HttpMethod.PUT, `${this.API_URL}/${UserService.USER_API}`, user);
  }

  getUser(id: string): Observable<User> {
    return this.get(`${this.API_URL}/${UserService.USER_API}/${id}`);
  }

  getUsers(): Observable<User[]> {
    return this.request<User[]>(HttpMethod.GET, `${this.API_URL}/${UserService.USER_API}`);
  }

  changePassword(userId: string, currentPassword: string, newPassword: string): Observable<User> {
    return this.put(`${this.API_URL}/${UserService.USER_API}/change-password`, {
      userId,
      currentPassword,
      newPassword
    });
  }
}
