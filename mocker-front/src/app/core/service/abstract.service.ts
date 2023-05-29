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
import { catchError, finalize, Observable, of } from 'rxjs';
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
import { UserModel } from '@core/domain/model/entity/user.model';
import { UnauthorizedException } from '@core/domain/exception/unauthorized.exception';
import { AuthenticationException } from '@core/domain/exception/authentication.exception';
import { Exception } from '@core/domain/exception/exception';
import { AbstractException } from '@core/domain/exception/abstract.exception';
import { Router } from '@angular/router';
import {BadRequestException} from "@core/domain/exception/bad-request.exception";
import {NotFoundException} from "@core/domain/exception/not-found.exception";

/**
 * @author Do Quoc Viet
 */

@Injectable({
  providedIn: 'root'
})
export class AbstractService<Type> implements HttpInterceptor {
  ENTITY_URL: string;
  API_URL: string = environment.API_URL;
  BASE_URL: string = environment.BASE_URL;
  protected modalProvider: ModalProvider;
  protected httpClient: HttpClient;
  protected appConfigService: ApplicationConfig;
  protected translateService: TranslateService;
  protected router: Router;

  constructor(private readonly injector: Injector) {
    this.modalProvider = injector.get(ModalProvider);
    this.httpClient = injector.get(HttpClient);
    this.appConfigService = injector.get(ApplicationConfig);
    this.translateService = injector.get(TranslateService);
    this.router = injector.get(Router);
  }

  /**
   * @param url
   * @param headers
   * @return Observable<Type>
   * @summary Generic method for getting API requests
   */
  get(url: string, headers?: HttpHeaders): Observable<Type> {
    this.appConfigService.loading.setValue(true);
    return this.httpClient.get<Type>(url, { headers })
      .pipe(catchError(this.defaultErrorHandler.bind(this)),
        finalize(this.finalizeRequest.bind(this)));
  }

  /**
   * @param url
   * @param body
   * @param headers
   * @return Observable<Type>
   * @summary Generic method for posting API requests
   */
  post(url: string, body?: any, headers?: HttpHeaders): Observable<Type> {
    this.appConfigService.loading.setValue(true);
    return this.httpClient.post<Type>(url, body, { headers })
      .pipe(catchError(this.defaultErrorHandler.bind(this)),
        finalize(this.finalizeRequest.bind(this)));
  }

  /**
   * @param url
   * @param body
   * @param headers
   * @return Observable<Type>
   * @summary Generic method for putting API requests
   */
  put(url: string, body?: any, headers?: HttpHeaders): Observable<Type> {
    this.appConfigService.loading.setValue(true);
    return this.httpClient.put<Type>(url, body, { headers })
      .pipe(catchError(this.defaultErrorHandler.bind(this)),
        finalize(this.finalizeRequest.bind(this)));
  }

  /**
   * @param url
   * @param headers
   * @return Observable<Type>
   * @summary Generic method for deleting API requests
   */
  delete(url: string, headers?: HttpHeaders): Observable<Type> {
    this.appConfigService.loading.setValue(true);
    return this.httpClient.delete<Type>(url, { headers })
      .pipe(catchError(this.defaultErrorHandler.bind(this)),
        finalize(this.finalizeRequest.bind(this)));
  }

  /**
   * @param method
   * @param url
   * @param body
   * @param headers
   * @summary Generic method for requesting API requests
   */
  request<OtherType>(method: HttpMethodEnum, url: string, body?: any, headers?: HttpHeaders): Observable<OtherType> {
    this.appConfigService.loading.setValue(true);
    return this.httpClient.request<OtherType>(method, url, {
      body,
      headers
    }).pipe(catchError(this.defaultErrorHandler.bind(this)),
      finalize(this.finalizeRequest.bind(this)));
  }

  /**
   * @param httpErrorResponse
   * @method Default error handler
   */
  defaultErrorHandler(httpErrorResponse: HttpErrorResponse): Observable<any> {
    const error: ErrorModel = httpErrorResponse.error;
    if (!error.message) {
      error.message = httpErrorResponse.error.error;
      error.additionalMessage = httpErrorResponse.message;
      error.path = httpErrorResponse.url || StringUtil.EMPTY;
    }
    let exception: AbstractException;
    switch (httpErrorResponse.status) {
      case HttpStatusCode.Forbidden:
        exception = new AuthenticationException(this.translateService.instant('error.authentication.title'), this.translateService.instant('error.authentication.message'));
        break;
      case HttpStatusCode.BadRequest:
        exception = new BadRequestException(error.message, error.additionalMessage);
        break;
      case HttpStatusCode.NotFound:
        exception = new NotFoundException(error.message, error.additionalMessage);
        break;
      case HttpStatusCode.Unauthorized:
        exception = new UnauthorizedException(error.message, error.additionalMessage);
        break;
      default:
        exception = new Exception(error.message, error.additionalMessage, error.path);
    }
    console.log(exception);
    this.modalProvider.showError({
      detail: exception.message
    });
    if (exception instanceof AuthenticationException) {
      this.router.navigate(['auth/sign-in']).then();
    }
    throw exception;
  };

  /**
   * @method finalize request
   */
  finalizeRequest(): void {
    if (this.appConfigService.loading) {
      this.appConfigService.loading.setValue(false);
    }
  }

  /**
   * @param request
   * @param next
   * @return Observable
   * @summary interceptor API request and response
   */
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

  /**
   * @method Authentication
   */
  authentication(): void {
    const storage: string | null = localStorage.getItem(LocalStorageConstant.AUTH);
    const authenticationException: AuthenticationException = new AuthenticationException(this.translateService.instant('error.authentication.title'), this.translateService.instant('error.authentication.message'));
    if (!storage) {
      throw authenticationException;
    }
    const { username, password }: { username: string, password: string } = JSON.parse(storage!) as UserModel;
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
            const storage: string = localStorage.getItem(LocalStorageConstant.AUTH)!;
            this.appConfigService.user = JSON.parse(storage) as UserModel;
          }
          const token: string | null = localStorage.getItem(LocalStorageConstant.TOKEN);
          if (!token || token !== httpResponse.headers.get(HttpHeaderConstant.AUTHORIZATION)) {
            localStorage.setItem(LocalStorageConstant.TOKEN, httpResponse.headers.get(HttpHeaderConstant.AUTHORIZATION)!);
          }
        }
      });
  }

  /**
   * @method Authorization
   */
  authorization(): void {

  }

  getEntity(id: string): Observable<Type> {
    return this.get(`${this.API_URL}/${this.ENTITY_URL}/${id}`);
  }

  getEntities(): Observable<Type[]> {
    return this.request<Type[]>(HttpMethodEnum.GET, `${this.API_URL}/${this.ENTITY_URL}`);
  }

  upsertEntity(entity: Type): Observable<Type> {
    return this.post(`${this.API_URL}/${this.ENTITY_URL}`, entity);
  }

  upsertEntities(entities: Type[]): Observable<Type[]> {
    return this.request<Type[]>(HttpMethodEnum.POST, `${this.API_URL}/${this.ENTITY_URL}`, entities);
  }

  deleteEntity(id: string | any): Observable<Type> {
    return this.delete(`${this.API_URL}/${this.ENTITY_URL}/${id}`);
  }

  deleteEntities(ids: string[] | any): Observable<Type[]> {
    return this.request<Type[]>(HttpMethodEnum.DELETE, `${this.API_URL}/${this.ENTITY_URL}`, ids);
  }

}
