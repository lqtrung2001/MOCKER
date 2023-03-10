import { Pipe, PipeTransform } from '@angular/core';
import { ConverterUtil } from '@core/util/converter.util';

/**
 * @author Do Quoc Viet
 * @class CsvPipe
 * @date 02/03/2023
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
    return this.converterService.toCSV(arr).join('');
  }

}
