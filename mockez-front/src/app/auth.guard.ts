import { ActivatedRouteSnapshot, CanActivate, Router, RouterStateSnapshot, UrlTree } from '@angular/router';
import { catchError, map, Observable } from 'rxjs';
import { Injectable } from '@angular/core';
import { User } from '@core/model/user';
import { AuthService } from '@core/service/auth.service';
import { ModalProvider } from '@shared/modal/modal-provider/modal-provider.modal';
import { HttpErrorResponse, HttpResponse } from '@angular/common/http';
import { UserService } from '@core/service/user.service';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Injectable({
  providedIn: 'root'
})
export class AuthGuard implements CanActivate {

  constructor(
    private authService: AuthService,
    private modalProvider: ModalProvider,
    private userService: UserService,
    private router: Router
  ) {
  }

  canActivate(route: ActivatedRouteSnapshot, state: RouterStateSnapshot): Observable<boolean | UrlTree> | Promise<boolean | UrlTree> | boolean | UrlTree {
    try {
      const user: User = JSON.parse(localStorage.getItem('user')!);
      return this.authService.login(user.username, user.password)
        .pipe(
          map((httpResponse: HttpResponse<any>) => {
            const token = httpResponse.headers.get('Authorization');
            const userAgent = httpResponse.headers.get('User-Agent');
            localStorage.setItem('token', token!);
            this.userService.findOneByUsername(userAgent!)
              .subscribe((userResponse: User) => {
                userResponse.password = user.password;
                localStorage.setItem('user', JSON.stringify(userResponse));
              });
          }),
          catchError((httpErrorResponse: HttpErrorResponse) => {
              return this.modalProvider.showError({
                body: httpErrorResponse.message
              });
            }
          )
        );
    } catch (error) {
      this.navigateToLogin(state);
      return false;
    }
  }

  // not logged in so redirect to login page with the return url
  navigateToLogin(state: RouterStateSnapshot): void {
    this.modalProvider.showError({
      body: `User isn't logged in, please login and try again.`
    }).subscribe(() => {
      this.router.navigate(['/auth/login'], { queryParams: { returnUrl: state.url } })
        .then(() => {
          console.debug(`User isn't logged in, please login and try again`);
        });
    });
  }

}
