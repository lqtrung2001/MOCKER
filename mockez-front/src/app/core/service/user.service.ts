import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { User } from '@core/model/user';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Injectable({
  providedIn: 'root'
})
export class UserService {

  USER_API = 'http://localhost:8080/api/v1/user';

  constructor(
    private httpClient: HttpClient
  ) {
  }

  findOneByUsername(username: string): Observable<User> {
    return this.httpClient.get<User>(`${this.USER_API}/find-by-username?username=${username}`);
  }

  saveOrUpdate(user: User): Observable<string> {
    return this.httpClient.put<string>(`${this.USER_API}`, user);
  }

  getUser(id: string): Observable<User> {
    return this.httpClient.get<User>(`${this.USER_API}/${id}`);
  }

  getUsers(): Observable<User[]> {
    return this.httpClient.get<User[]>(`${this.USER_API}`);
  }

  changePassword(userId: string, currentPassword: string, newPassword: string): Observable<User> {
    return this.httpClient.put<User>(`${this.USER_API}/change-password`, {
      userId,
      currentPassword,
      newPassword
    });

  }
}
