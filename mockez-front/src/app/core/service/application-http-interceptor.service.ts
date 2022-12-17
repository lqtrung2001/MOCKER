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
    this.appConfigProviderService.loading = true;
    return next
      // Add token when requesting
      .handle(request.clone({
        responseType: 'json',
        setHeaders: {
          Authorization: localStorage.getItem('token') || ''
        }
      }))
      // Catch the error
      .pipe(catchError((error: HttpErrorResponse) => {
        this.appConfigProviderService.loading = false;
        return this.modalProvider.showError({
          body: error.message
        });
      }), finalize(() => {
        this.appConfigProviderService.loading = false;
      }));
  }
}
