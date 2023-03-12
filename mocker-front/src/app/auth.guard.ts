import { ActivatedRouteSnapshot, CanActivate, RouterStateSnapshot, UrlTree } from '@angular/router';
import { Observable } from 'rxjs';
import { Injectable, Injector } from '@angular/core';
import { AbstractService } from '@core/service/abstract.service';

/**
 * @author Do Quoc Viet
 */

@Injectable({
  providedIn: 'root'
})
export class AuthGuard extends AbstractService<any> implements CanActivate {
  constructor(
    injector: Injector
  ) {
    super(injector);
  }

  canActivate(route: ActivatedRouteSnapshot, state: RouterStateSnapshot): Observable<boolean | UrlTree> | Promise<boolean | UrlTree> | boolean | UrlTree {
    this.authentication();
    this.authorization();
    return true;
  }

}
