import { HttpErrorResponse, HttpEvent, HttpHandler, HttpInterceptor, HttpRequest } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { catchError, finalize, Observable } from 'rxjs';
import { ModalProvider } from '@shared/modal/modal-provider/modal-provider.modal';
import { AppConfigProviderService } from '@core/service/app-config-provider.service';

@Injectable({
  providedIn: 'root'
})
export class ApplicationHttpInterceptorService implements HttpInterceptor {

  constructor(
    private modalProvider: ModalProvider,
    private appConfigProviderService: AppConfigProviderService
  ) {
  }

  intercept(request: HttpRequest<any>, next: HttpHandler): Observable<HttpEvent<any>> {
    this.appConfigProviderService.isLoading = true;
    return next
      // Add token when requesting
      .handle(request.clone({
        responseType: 'json',
        setHeaders: {
          Authorization: localStorage.getItem('token') || ''
        }
      }))
      // Catch the error
      .pipe(catchError((httpErrorResponse: HttpErrorResponse) => {
        this.appConfigProviderService.isLoading = false;
        if (httpErrorResponse.status === 403) {
          return this.modalProvider.showError({
            body: 'You don\'t have permission to perform this action: ' + httpErrorResponse.message
          });
        } else {
          return this.modalProvider.showError({
            body: 'A error occurred while performing this action, please try again later or contact the administrator'
          });
        }
      }), finalize(() => {
        this.appConfigProviderService.isLoading = false;
      }));
  }
}
