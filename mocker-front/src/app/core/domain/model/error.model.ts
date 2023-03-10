import { ErrorCodeEnum } from '@core/domain/enum/error-code.enum';

/**
 * @author Do Quoc Viet
 */

export class ErrorModel {
  public timestamp: string;
  public status: number;
  public error: string;
  public message: string;
  public path: string;
  public code: ErrorCodeEnum;
  public additionalMessage: string;
}
