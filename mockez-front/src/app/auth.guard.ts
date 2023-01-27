import { ActivatedRouteSnapshot, CanActivate, Router, RouterStateSnapshot, UrlTree } from '@angular/router';
import { map, Observable } from 'rxjs';
import { Injectable } from '@angular/core';
import { AuthService } from '@core/service/auth.service';
import { TranslateService } from '@ngx-translate/core';
import { HttpResponse } from '@angular/common/http';

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
    private router: Router
  ) {
  }

  canActivate(route: ActivatedRouteSnapshot, state: RouterStateSnapshot): Observable<boolean | UrlTree> | Promise<boolean | UrlTree> | boolean | UrlTree {
    return this.authService.checkAuthorized()
      .pipe(map((httpResponse: HttpResponse<any>) => {
        if (httpResponse.ok) {
          return true;
        }
        localStorage.clear();
        console.debug(`${Date.now()}: ${this.translateService.instant('audit.login_failure')}`);
        this.router.navigate(['/auth/sign-in']).then();
        return false;
      }));
  }

}
