import { Pipe, PipeTransform } from '@angular/core';
import { StringUtil } from '@core/util/string.util';
import { DownloadUtil } from '@core/util/download.util';

/**
 * @author Do Quoc Viet
 */

@Pipe({
  name: 'mocJson'
})
export class MocJsonPipe implements PipeTransform {
  transform(arr: string[], tableName: string): string {
    return DownloadUtil.dataToJSON(arr, tableName).join(StringUtil.EMPTY);
  }

}
