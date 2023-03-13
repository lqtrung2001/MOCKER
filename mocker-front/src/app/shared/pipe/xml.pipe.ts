import { Pipe, PipeTransform } from '@angular/core';
import { ConverterUtil } from '@core/util/converter.util';
import { StringUtil } from '@core/util/string.util';

/**
 * @author Do Quoc Viet
 */

@Pipe({
  name: 'xml'
})
export class XmlPipe implements PipeTransform {
  constructor(
    private converterService: ConverterUtil
  ) {
  }

  transform(arr: string[], tableName: string): string {
    return this.converterService.toXML(arr, tableName).join(StringUtil.EMPTY);
  }
}

