import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { User } from '@core/model/user';

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
    return this.httpClient.get<User>(`${this.USER_API}/${username}`);
  }

}
