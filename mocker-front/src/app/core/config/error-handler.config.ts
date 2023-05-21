import { ErrorHandler, Injectable, Injector } from '@angular/core';
import { ModalProvider } from '@shared/modal/modal-provider/modal-provider.modal';
import { AuthenticationException } from '@core/domain/exception/authentication.exception';
import { Router } from '@angular/router';
import { AbstractException } from '@core/domain/exception/abstract.exception';

/**
 * @author Do Quoc Viet
 */

@Injectable({
  providedIn: 'root'
})
export class ErrorHandlerConfig implements ErrorHandler {
  constructor(
    private readonly injector: Injector,
    private router: Router
  ) {
  }

  private get modalProvider(): ModalProvider {
    return this.injector.get(ModalProvider);
  }

  handleError(error: any): void {
    const exception: any = (error instanceof AbstractException) ? error : error.rejection;
    if (exception instanceof AbstractException) {
      this.modalProvider.showError({
        detail: exception.message
      }).subscribe((): void => {
        if (exception instanceof AuthenticationException) {
          this.router.navigate(['auth/sign-in']).then();
        }
      });
    } else {
      console.error(error);
    }
  }

}
