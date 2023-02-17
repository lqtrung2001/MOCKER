import { ActivatedRouteSnapshot, CanActivate, Router, RouterStateSnapshot, UrlTree } from '@angular/router';
import { map, Observable } from 'rxjs';
import { Injectable } from '@angular/core';
import { AuthService } from '@core/service/auth.service';
import { TranslateService } from '@ngx-translate/core';
import { HttpResponse } from '@angular/common/http';
import { AppConfigService } from '@core/service/app-config.service';
import { LocalStorageConstant } from '@core/constant/local-storage.constant';
import { User } from '@core/model/user';
import { HttpHeaderConstant } from '@core/constant/http-header.constant';

/**
 * @author Do Quoc Viet
 */

@Injectable({
  providedIn: 'root'
})
export class AuthGuard implements CanActivate {

  constructor(
    private authService: AuthService,
    private translateService: TranslateService,
    private appConfigService: AppConfigService,
    private router: Router
  ) {
  }

  canActivate(route: ActivatedRouteSnapshot, state: RouterStateSnapshot): Observable<boolean | UrlTree> | Promise<boolean | UrlTree> | boolean | UrlTree {
    return this.authService.checkAuthorized()
      .pipe(map((httpResponse: HttpResponse<any>) => {
        if (httpResponse.ok) {
          if (!this.appConfigService.user) {
            const storage = localStorage.getItem(LocalStorageConstant.AUTH)!;
            this.appConfigService.user = JSON.parse(storage) as User;
          }
          const token = localStorage.getItem(LocalStorageConstant.TOKEN);
          if (!token || token !== httpResponse.headers.get(HttpHeaderConstant.AUTHORIZATION)) {
            localStorage.setItem(LocalStorageConstant.TOKEN, httpResponse.headers.get(HttpHeaderConstant.AUTHORIZATION)!);
          }
          return true;
        }
        localStorage.clear();
        console.debug(`${Date.now()}: ${this.translateService.instant('audit.login_failure')}`);
        this.router.navigate(['/auth/sign-in']).then();
        return false;
      }));
  }

}
