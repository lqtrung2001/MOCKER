import { Pipe, PipeTransform } from '@angular/core';
import { StringUtil } from '@core/util/string.util';
import { DownloadUtil } from '@core/util/download.util';

/**
 * @author Do Quoc Viet
 */

@Pipe({
  name: 'csv'
})
export class CsvPipe implements PipeTransform {
  transform(arr: string[]): string {
    return DownloadUtil.dataToCSV(arr).join(StringUtil.EMPTY);
  }

}
