import { Pipe, PipeTransform } from '@angular/core';
import { StringUtil } from '@core/util/string.util';
import { DownloadUtil } from '@core/util/download.util';

/**
 * @author Do Quoc Viet
 */

@Pipe({
  name: 'sql'
})
export class SqlPipe implements PipeTransform {
  transform(array: string[], tableName: string): string {
    return DownloadUtil.dataToSQL(array, tableName).join(StringUtil.EMPTY);
  }

}
