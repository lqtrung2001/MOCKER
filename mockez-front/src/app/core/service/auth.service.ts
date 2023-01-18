import { Injectable, Injector } from '@angular/core';
import { catchError, map, Observable, of } from 'rxjs';
import { User } from '@core/model/user';
import { AppHttpService } from '@core/service/app-http.service';
import { HttpErrorResponse, HttpResponse } from '@angular/common/http';
import { LocalStorageConstant } from '@core/constant/local-storage.constant';
import { HttpHeaderConstant } from '@core/constant/http-header.constant';
import { HttpMethod } from '@core/class/enum/http-method';
import { Strings } from '@shared/util/strings';

/**
 * @author Luong Quoc Trung
 * @author Do Quoc Viet
 */

@Injectable({
  providedIn: 'root'
})
export class AuthService extends AppHttpService<User> {

  constructor(
    injector: Injector
  ) {
    super(injector);
  }

  checkAuthorized(): Observable<any> {
    const storage = localStorage.getItem(LocalStorageConstant.AUTH);
    if (!storage) {
      return of(false);
    }
    const user: User = JSON.parse(storage) as User;
    if (!user.username || !user.password) {
      return of(false);
    }
    return this.httpClient.post(`${this.BASE_URL}/login`, {
      username: user.username,
      password: user.password
    }, { observe: 'response' })
      .pipe(catchError(() => of(false)));
  }

  signIn(username: string, password: string): Observable<string> {
    return this.httpClient.post<any>(`${this.BASE_URL}/login`,
      { username, password },
      { observe: 'response' })
      .pipe(map((httpResponse: HttpResponse<any>) => {
        if (httpResponse.ok) {
          const token = httpResponse.headers.get(HttpHeaderConstant.AUTHORIZATION);
          const userAgent = httpResponse.headers.get(HttpHeaderConstant.USER_AGENT);
          if (!token || !userAgent) {
            return Strings.EMPTY;
          }
          localStorage.setItem(LocalStorageConstant.TOKEN, token);
          return userAgent;
        }
        return Strings.EMPTY;
      }), catchError(() => of(Strings.EMPTY)));
  }

  sendVerificationCode(username: string): Observable<boolean> {
    return this.request<boolean>(HttpMethod.POST, `${this.BASE_URL}/auth/send-verification-code`, username);
  }

  verifyAndSave(verificationCode: string, user: User, errorHandler?: (httpErrorResponse: HttpErrorResponse) => Observable<any>): Observable<User> {
    return this.post(`${this.BASE_URL}/auth/verify/${verificationCode}`, user, errorHandler);
  }

  isExistedUsername(username: string): Observable<boolean> {
    return this.request(HttpMethod.GET, `${this.BASE_URL}/auth/is-existed-username/${username}`);
  }

  changePassword(id: string, oldPassword: string, newPassword: string): Observable<User> {
    return this.request<User>(HttpMethod.PUT, `${this.BASE_URL}/auth/change-password/${id}`, {
      oldPassword,
      newPassword
    });
  }

}
