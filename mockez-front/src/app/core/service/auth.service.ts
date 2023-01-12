import { Injectable, Injector } from '@angular/core';
import { map, Observable, of } from 'rxjs';
import { User } from '@core/model/user';
import { AppHttpService } from '@core/service/app-http.service';
import { HttpResponse } from '@angular/common/http';
import { HTTP_HEADER_KEYS, LOCALSTORAGE_KEYS } from '@app/app.constant';
import { UserService } from '@core/service/user.service';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Injectable({
  providedIn: 'root'
})
export class AuthService extends AppHttpService<User> {

  constructor(
    injector: Injector,
    private userService: UserService
  ) {
    super(injector);
  }

  auth(username: string, password: string): Observable<any> {
    return this.post(`${this.BASE_URL}/login`, { username, password }, () => of(false));
  }

  checkAuth(): Observable<boolean> {
    const user = this.appConfigService.userLocalStorage;
    if (!user) {
      return of(false);
    }
    return this.auth(user.username!, user.password!);
  }

  login(username: string, password: string): Observable<boolean> {
    return this.request<any>('POST', `${this.BASE_URL}/login`, { username, password }, () => of(false))
      .pipe(map((httpResponse: HttpResponse<any>) => {
        const token = httpResponse.headers.get(HTTP_HEADER_KEYS.AUTHORIZATION);
        const userAgent = httpResponse.headers.get(HTTP_HEADER_KEYS.USER_AGENT);
        localStorage.setItem(LOCALSTORAGE_KEYS.TOKEN, token!);
        this.userService.findOneByUsername(userAgent!)
          .subscribe((user: User) => {
            user.password = password;
            localStorage.setItem(LOCALSTORAGE_KEYS.AUTH, JSON.stringify(user));
            this.appConfigService.user = user;
          });
        return true;
      }));
  }

  sentOTPCode(username: string): Observable<boolean> {
    return this.request('POST', `${this.BASE_URL}/auth/sendcode`, username);
  }

  validateAndSave(user: User, otpCode: number): Observable<User> {
    return this.post(`${this.BASE_URL}/auth/validate/${otpCode}`, user);
  }

  checkIsExistUsername(username: string): Observable<boolean> {
    return this.request<boolean>('GET', `${this.BASE_URL}/auth/check-exist/${username}`);
  }
}
