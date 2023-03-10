import { AbstractException } from '@core/domain/exception/abstract.exception';

/**
 * @author Do Quoc Viet
 */

export class AuthenticationException extends AbstractException {
  constructor(message: string, additionalMessage: string) {
    super(message, additionalMessage);
  }
}
