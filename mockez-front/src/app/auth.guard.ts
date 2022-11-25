import { ActivatedRouteSnapshot, CanActivate, Router, RouterStateSnapshot, UrlTree } from '@angular/router';
import { catchError, map, Observable, of } from 'rxjs';
import { Injectable } from '@angular/core';
import { User } from '@core/model/user';
import { AuthService } from '@core/service/auth.service';
import { ModalProvider } from '@shared/modal/modal-provider/modal-provider.modal';
import { HttpErrorResponse, HttpResponse } from '@angular/common/http';
import { UserService } from '@core/service/user.service';

@Injectable({
  providedIn: 'root'
})
export class AuthGuard implements CanActivate {
  constructor(
    private authService: AuthService,
    private modalProvider: ModalProvider,
    private router: Router,
    private userService: UserService
  ) {
    console.log(router.config);
  }

  canActivate(route: ActivatedRouteSnapshot, state: RouterStateSnapshot): Observable<boolean | UrlTree> | Promise<boolean | UrlTree> | boolean | UrlTree {
    const userLocalStorage = localStorage.getItem('user');
    if (!userLocalStorage) {
      this.modalProvider.showConfirmation({
        body: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.'
      });
      return of(false);
    }
    const user: User = JSON.parse(userLocalStorage);
    user.password = '1';
    return this.authService.login(
      user.username!,
      user.password!
    ).pipe(
      map((httpResponse: HttpResponse<any>) => {
        const token = httpResponse.headers.get('Authorization');
        const userAgent = httpResponse.headers.get('User-Agent');
        if (token && userAgent) {
          if (token !== localStorage.getItem('token')) {
            localStorage.setItem('token', token);
          }
          this.userService.findOneByUsername(userAgent)
            .subscribe((userResponse: User) => {
              userResponse.password = user.password;
              localStorage.setItem('user', JSON.stringify(userResponse));
            });
        } else {
          throw new Error('Not logged in');
        }
      }),
      catchError((httpErrorResponse: HttpErrorResponse) => {
          return this.modalProvider.showError({
            body: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.'
          }).toPromise();
        }
      )
    );
  }

}
