import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { User } from '@core/model/user';

@Injectable({
  providedIn: 'root'
})
export class AuthService {

  constructor(
    private httpClient: HttpClient
  ) {
  }

  login(username: string | undefined, password: string | undefined): Observable<any> {
    if (!username || !password) {
      throw new Error(`Invalid username or password`);
    }
    return this.httpClient.post('http://localhost:8080/login', {
      username,
      password
    }, { observe: 'response' });
  }

  sentOTPCode(username: string): Observable<boolean> {
    return this.httpClient.post<boolean>(`http://localhost:8080/auth/sendcode`, username);
  }

  validateAndSave(user: User, otpCode: number): Observable<User> {
    return this.httpClient.post<User>(`http://localhost:8080/auth/validate/${otpCode}`, user);
  }

  checkIsExistUsername(username: string): Observable<boolean> {
    return this.httpClient.get<boolean>(`http://localhost:8080/auth/check-exist/${username}`);
  }
}
