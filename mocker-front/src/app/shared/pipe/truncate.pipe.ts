import { Pipe, PipeTransform } from '@angular/core';
import { Strings } from '@shared/util/strings';

/**
 * @author Do Quoc Viet
 * @class TruncatePipe
 * @date 02/03/2023
 */

@Pipe({
  name: 'truncate'
})
export class TruncatePipe implements PipeTransform {
  transform(value: string | undefined, limit: number): string {
    if (value === undefined) {
      return Strings.EMPTY;
    }
    return value?.length > limit ? value.substring(0, limit) + '...' : value;
  }
}
