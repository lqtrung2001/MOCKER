import { ErrorCode } from '@core/model/enumeration/error-code';

export class Error {
  public timestamp: string;
  public static: number;
  public error: string;
  public message: string;
  public path: string;
  public CodeEnum: ErrorCode;
  public additionalMessage: string;
}
