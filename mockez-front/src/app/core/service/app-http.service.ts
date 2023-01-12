import {
  HttpClient,
  HttpErrorResponse,
  HttpEvent,
  HttpHandler,
  HttpHeaders,
  HttpInterceptor,
  HttpRequest,
  HttpStatusCode
} from '@angular/common/http';
import { catchError, finalize, Observable, of } from 'rxjs';
import { ModalProvider } from '@shared/modal/modal-provider/modal-provider.modal';
import { AppConfigService } from '@core/service/app-config.service';
import { LOCALSTORAGE_KEYS } from '@app/app.constant';
import { environment } from '@environment/environment';
import { Injectable, Injector } from '@angular/core';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Injectable({
  providedIn: 'root'
})
export abstract class AppHttpService<Type> implements HttpInterceptor {

  API_URL = environment.API_URL;
  BASE_URL = environment.BASE_URL;

  protected modalProvider: ModalProvider;
  protected httpClient: HttpClient;
  protected appConfigService: AppConfigService;

  constructor(injector: Injector) {
    this.modalProvider = injector.get(ModalProvider);
    this.httpClient = injector.get(HttpClient);
    this.appConfigService = injector.get(AppConfigService);
  }

  // GET method
  get(url: string, errorHandler?: (httpErrorResponse: HttpErrorResponse) => Observable<any>,
      headers?: HttpHeaders): Observable<Type> {
    return this.httpClient.get<Type>(url, { headers })
      .pipe(catchError(errorHandler || this.defaultErrorHandler),
        finalize(this.finalizeRequest));
  }

  // POST method
  post(url: string, body?: any, errorHandler?: (httpErrorResponse: HttpErrorResponse) => Observable<any>,
       headers?: HttpHeaders): Observable<Type> {
    return this.httpClient.post<Type>(url, body, { headers })
      .pipe(catchError(errorHandler || this.defaultErrorHandler),
        finalize(this.finalizeRequest));
  }

  // PUT method
  put(url: string, body?: any,
      errorHandler?: (httpErrorResponse: HttpErrorResponse) => Observable<any>,
      headers?: HttpHeaders): Observable<Type> {
    return this.httpClient.put<Type>(url, body, { headers })
      .pipe(catchError(errorHandler || this.defaultErrorHandler),
        finalize(this.finalizeRequest));
  }

  // DELETE method
  delete(url: string,
         errorHandler?: (httpErrorResponse: HttpErrorResponse) => Observable<any>,
         headers?: HttpHeaders): Observable<Type> {
    return this.httpClient.delete<Type>(url, { headers })
      .pipe(catchError(errorHandler || this.defaultErrorHandler),
        finalize(this.finalizeRequest));
  }

  // REQUEST
  request<OtherType>(method: 'GET' | 'POST' | 'PUT' | 'DELETE', url: string, body?: any,
                     errorHandler?: (httpErrorResponse: HttpErrorResponse) => Observable<any>,
                     headers?: HttpHeaders): Observable<OtherType> {
    return this.httpClient.request<OtherType>(method, url, {
      body,
      headers,
      observe: 'response'
    }).pipe(catchError(errorHandler || this.defaultErrorHandler),
      finalize(this.finalizeRequest));
  }

  defaultErrorHandler(httpErrorResponse: HttpErrorResponse): Observable<any> {
    if (httpErrorResponse.status === HttpStatusCode.Forbidden) {
      this.modalProvider.showError({
        body: 'You are not allowed to access this action.'
      });
      return of(httpErrorResponse);
    } else {
      return this.modalProvider.showError({
        body: 'A error occurred while performing this action, please try again later or contact the administrator.',
        detail: httpErrorResponse.message
      });
    }
  };

  finalizeRequest(): void {
    this.appConfigService.isLoading = false;
  }

  intercept(request: HttpRequest<any>, next: HttpHandler): Observable<HttpEvent<any>> {
    this.appConfigService.isLoading = true;
    return next
      // Add token when requesting
      .handle(request.clone({
        responseType: 'json',
        setHeaders: {
          'Content-Type': 'application/json',
          Authorization: localStorage.getItem(LOCALSTORAGE_KEYS.TOKEN) || ''
        }
      }));
  }

}
