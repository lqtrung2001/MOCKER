import { StringUtil } from '@core/util/string.util';

/**
 * @author Do Quoc Viet
 */

export abstract class AbstractException implements Error {
  message: string;
  name: string;
  stack: string;

  protected constructor(message: string, private additionalMessage?: string, stackTrace?: string) {
    this.message = `<b>${message.toUpperCase()}</b>
                    <p>${additionalMessage || StringUtil.EMPTY}</p>
                    ${stackTrace ? '<p><b>Stack trace: </b></br>${stackTrace || StringUtil.EMPTY}</p>' : StringUtil.EMPTY}`;
  }
}
