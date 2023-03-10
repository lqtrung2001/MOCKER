import { AbstractException } from '@core/domain/exception/abstract.exception';

/**
 * @author Do Quoc Viet
 */

export class UnauthorizedException extends AbstractException {
  constructor(message: string, additionalMessage: string) {
    super(message, additionalMessage);
  }
}
