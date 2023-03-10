import {
  HttpClient,
  HttpErrorResponse,
  HttpEvent,
  HttpHandler,
  HttpHeaders,
  HttpInterceptor,
  HttpRequest,
  HttpResponse,
  HttpStatusCode
} from '@angular/common/http';
import { catchError, finalize, Observable } from 'rxjs';
import { ModalProvider } from '@shared/modal/modal-provider/modal-provider.modal';
import { ApplicationConfig } from '@core/config/application.config';
import { environment } from '@environment/environment';
import { Injectable, Injector } from '@angular/core';
import { TranslateService } from '@ngx-translate/core';
import { HttpMethodEnum } from '@core/domain/enum/http-method.enum';
import { StringUtil } from '@core/util/string.util';
import { LocalStorageConstant } from '@core/constant/local-storage.constant';
import { HttpHeaderConstant } from '@core/constant/http-header.constant';
import { ErrorModel } from '@core/domain/model/error.model';
import { UserModel } from '@core/domain/model/user.model';
import { UnauthorizedException } from '@core/domain/exception/unauthorized.exception';
import { BadRequestException } from '@core/domain/exception/bad-request.exception';
import { InternalException } from '@core/domain/exception/internal.exception';
import { NotFoundException } from '@core/domain/exception/not-found.exception';
import { AuthenticationException } from '@core/domain/exception/authentication.exception';
import { Exception } from '@core/domain/exception/exception';

/**
 * @author Do Quoc Viet
 */

@Injectable({
  providedIn: 'root'
})
export class AbstractService<Type> implements HttpInterceptor {
  API_URL = environment.API_URL;
  BASE_URL = environment.BASE_URL;
  protected modalProvider: ModalProvider;
  protected httpClient: HttpClient;
  protected appConfigService: ApplicationConfig;
  protected translateService: TranslateService;

  constructor(private readonly injector: Injector) {
    this.modalProvider = injector.get(ModalProvider);
    this.httpClient = injector.get(HttpClient);
    this.appConfigService = injector.get(ApplicationConfig);
    this.translateService = injector.get(TranslateService);
  }

  // GET method
  get(url: string, headers?: HttpHeaders): Observable<Type> {
    this.appConfigService.loading.setValue(true);
    return this.httpClient.get<Type>(url, { headers })
      .pipe(catchError(this.defaultErrorHandler.bind(this)),
        finalize(this.finalizeRequest.bind(this)));
  }

  // POST method
  post(url: string, body?: any, headers?: HttpHeaders): Observable<Type> {
    this.appConfigService.loading.setValue(true);
    return this.httpClient.post<Type>(url, body, { headers })
      .pipe(catchError(this.defaultErrorHandler.bind(this)),
        finalize(this.finalizeRequest.bind(this)));
  }

  // PUT method
  put(url: string, body?: any, headers?: HttpHeaders): Observable<Type> {
    this.appConfigService.loading.setValue(true);
    return this.httpClient.put<Type>(url, body, { headers })
      .pipe(catchError(this.defaultErrorHandler.bind(this)),
        finalize(this.finalizeRequest.bind(this)));
  }

  // DELETE method
  delete(url: string, headers?: HttpHeaders): Observable<Type> {
    this.appConfigService.loading.setValue(true);
    return this.httpClient.delete<Type>(url, { headers })
      .pipe(catchError(this.defaultErrorHandler.bind(this)),
        finalize(this.finalizeRequest.bind(this)));
  }

  // REQUEST
  request<OtherType>(method: HttpMethodEnum, url: string, body?: any, headers?: HttpHeaders): Observable<OtherType> {
    this.appConfigService.loading.setValue(true);
    return this.httpClient.request<OtherType>(method, url, {
      body,
      headers
    }).pipe(catchError(this.defaultErrorHandler.bind(this)),
      finalize(this.finalizeRequest.bind(this)));
  }

  defaultErrorHandler(httpErrorResponse: HttpErrorResponse): Observable<any> {
    const error: ErrorModel = httpErrorResponse.error;
    if (!error.message) {
      error.message = httpErrorResponse.error.error;
      error.additionalMessage = httpErrorResponse.message;
      error.path = httpErrorResponse.url || StringUtil.EMPTY;
    }
    switch (httpErrorResponse.status) {
      case HttpStatusCode.Forbidden:
        throw new AuthenticationException(this.translateService.instant('error.authentication.title'), this.translateService.instant('error.authentication.message'));
      case HttpStatusCode.BadRequest:
        throw new BadRequestException(error.message, error.additionalMessage);
      case HttpStatusCode.NotFound:
        throw new NotFoundException(error.message, error.additionalMessage);
      case HttpStatusCode.Unauthorized:
        throw new UnauthorizedException(error.message, error.additionalMessage);
      case HttpStatusCode.InternalServerError:
        throw new InternalException(error.message, error.additionalMessage, error.path);
      default:
        throw new Exception(error.message, error.additionalMessage, error.path);
    }
  };

  finalizeRequest(): void {
    if (this.appConfigService.loading) {
      this.appConfigService.loading.setValue(false);
    }
  }

  intercept(request: HttpRequest<any>, next: HttpHandler): Observable<HttpEvent<any>> {
    return next
      // Add token when requesting
      .handle(request.clone({
        responseType: 'json',
        setHeaders: {
          [HttpHeaderConstant.CONTENT_TYPE]: 'application/json',
          Authorization: localStorage.getItem(LocalStorageConstant.TOKEN) || StringUtil.EMPTY
        }
      }));
  }

  authentication(): void {
    const storage = localStorage.getItem(LocalStorageConstant.AUTH);
    let authenticationException = new AuthenticationException(this.translateService.instant('error.authentication.title'), this.translateService.instant('error.authentication.message'));
    if (!storage) {
      throw authenticationException;
    }
    const { username, password } = JSON.parse(storage!) as UserModel;
    if (!username || !password) {
      throw authenticationException;
    }
    this.httpClient.post(`${this.BASE_URL}/login`, {
      username,
      password
    }, { observe: 'response' })
      .subscribe((httpResponse: HttpResponse<any>) => {
        if (httpResponse.ok) {
          if (!this.appConfigService.user) {
            const storage = localStorage.getItem(LocalStorageConstant.AUTH)!;
            this.appConfigService.user = JSON.parse(storage) as UserModel;
          }
          const token = localStorage.getItem(LocalStorageConstant.TOKEN);
          if (!token || token !== httpResponse.headers.get(HttpHeaderConstant.AUTHORIZATION)) {
            localStorage.setItem(LocalStorageConstant.TOKEN, httpResponse.headers.get(HttpHeaderConstant.AUTHORIZATION)!);
          }
        }
      });
  }

  authorization(): void {

  }

}
