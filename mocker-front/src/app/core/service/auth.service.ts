import { Injectable } from '@angular/core';
import { catchError, map, Observable, of } from 'rxjs';
import { UserModel } from '@core/domain/model/entity/user.model';
import { AbstractService } from '@core/service/abstract.service';
import { HttpResponse } from '@angular/common/http';
import { LocalStorageConstant } from '@core/constant/local-storage.constant';
import { HttpHeaderConstant } from '@core/constant/http-header.constant';
import { HttpMethodEnum } from '@core/domain/enum/http-method.enum';
import { StringUtil } from '@core/util/string.util';

/**
 * @author Do Quoc Viet
 */

@Injectable({
  providedIn: 'root'
})
export class AuthService extends AbstractService<UserModel> {
  static AUTH_API: string = 'auth';

  signIn(username: string, password: string): Observable<string> {
    return this.httpClient.post<any>(`${this.BASE_URL}/login`,
      { username, password },
      { observe: 'response' })
      .pipe(map((httpResponse: HttpResponse<any>) => {
        if (httpResponse.ok) {
          const token = httpResponse.headers.get(HttpHeaderConstant.AUTHORIZATION);
          const userAgent = httpResponse.headers.get(HttpHeaderConstant.USER_AGENT);
          if (!token || !userAgent) {
            return StringUtil.EMPTY;
          }
          localStorage.setItem(LocalStorageConstant.TOKEN, token);
          return userAgent;
        }
        return StringUtil.EMPTY;
      }), catchError(() => of(StringUtil.EMPTY)));
  }

  sendVerificationCode(username: string): Observable<boolean> {
    return this.request<boolean>(HttpMethodEnum.POST, `${this.BASE_URL}/${AuthService.AUTH_API}/send-verification-code`, username);
  }

  verifyAndSave(verificationCode: string, user: UserModel): Observable<UserModel> {
    return this.post(`${this.BASE_URL}/${AuthService.AUTH_API}/verify/${verificationCode}`, user);
  }

  isExistedUsername(username: string): Observable<boolean> {
    return this.request(HttpMethodEnum.GET, `${this.BASE_URL}/${AuthService.AUTH_API}/is-existed-username/${username}`);
  }

  changePassword(id: string, oldPassword: string, newPassword: string): Observable<UserModel> {
    return this.request<UserModel>(HttpMethodEnum.PUT, `${this.BASE_URL}/${AuthService.AUTH_API}/change-password/${id}`, {
      oldPassword,
      newPassword
    });
  }

}
