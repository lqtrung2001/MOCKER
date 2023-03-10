import { AbstractException } from '@core/domain/exception/abstract.exception';

/**
 * @author Do Quoc Viet
 */

export class InternalException extends AbstractException {
  constructor(message: string, additionalMessage: string, stackTrace: string) {
    super(message, additionalMessage, stackTrace);
  }
}
