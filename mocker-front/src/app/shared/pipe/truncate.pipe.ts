import { Pipe, PipeTransform } from '@angular/core';
import { StringUtil } from '@core/util/string.util';

/**
 * @author Do Quoc Viet
 */

@Pipe({
  name: 'truncate'
})
export class TruncatePipe implements PipeTransform {
  transform(value: string | undefined, limit: number): string {
    if (value === undefined) {
      return StringUtil.EMPTY;
    }
    return value?.length > limit ? value.substring(0, limit) + '...' : value;
  }
}
