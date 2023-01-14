import { HttpEvent, HttpHandler, HttpInterceptor, HttpRequest } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { ModalProvider } from '@shared/modal/modal-provider/modal-provider.modal';
import { AppConfigService } from '@core/service/app-config.service';
import { Router } from '@angular/router';
import { finalize, Observable } from 'rxjs';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Injectable({
  providedIn: 'root'
})
export class ApplicationHttpInterceptorService implements HttpInterceptor {

  constructor(
    private modalProvider: ModalProvider,
    private appConfigProviderService: AppConfigService,
    private router: Router
  ) {
  }

  intercept(request: HttpRequest<any>, next: HttpHandler): Observable<HttpEvent<any>> {
    this.appConfigProviderService.loading = true;
    return next
      // Add token when requesting
      .handle(request.clone({
        responseType: 'json',
        setHeaders: {
          'Content-Type': 'application/json',
          Authorization: localStorage.getItem('token') || ''
        }
      })).pipe(
        // Catch the error
        // .pipe(catchError((httpErrorResponse: HttpErrorResponse) => {
        //   this.appConfigProviderService.isLoading = false;
        //   if (httpErrorResponse.status === 403) {
        //     this.modalProvider.showError({
        //       body: 'You have no permission to perform this action.'
        //     }).subscribe(() => {
        //       this.router.navigate(['/auth/login']).then();
        //     });
        //     return of(httpErrorResponse);
        //   } else {
        //     return this.modalProvider.showError({
        //       body: 'A error occurred while performing this action, please try again later or contact the administrator'
        //     });
        //   }
        // }),
        finalize(() => {
          this.appConfigProviderService.loading = false;
        }));
  }
}
