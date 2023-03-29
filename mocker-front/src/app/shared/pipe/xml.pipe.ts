import { Pipe, PipeTransform } from '@angular/core';
import { StringUtil } from '@core/util/string.util';
import { DownloadUtil } from '@core/util/download.util';

/**
 * @author Do Quoc Viet
 */

@Pipe({
  name: 'xml'
})
export class XmlPipe implements PipeTransform {
  transform(arr: string[], tableName: string): string {
    return DownloadUtil.dataToXML(arr, tableName).join(StringUtil.EMPTY);
  }
}

