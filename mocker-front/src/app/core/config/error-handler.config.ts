import { ErrorHandler, Injectable } from '@angular/core';

/**
 * @author Do Quoc Viet
 */

@Injectable({
  providedIn: 'root'
})
export class ErrorHandlerConfig implements ErrorHandler {
  handleError(error: any): void {
    console.log(error);
  }

}
