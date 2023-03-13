import { Pipe, PipeTransform } from '@angular/core';
import { ConverterUtil } from '@core/util/converter.util';
import { StringUtil } from '@core/util/string.util';

/**
 * @author Do Quoc Viet
 */

@Pipe({
  name: 'csv'
})
export class CsvPipe implements PipeTransform {
  constructor(
    private converterService: ConverterUtil
  ) {
  }

  transform(arr: string[]): string {
    return this.converterService.toCSV(arr).join(StringUtil.EMPTY);
  }

}
