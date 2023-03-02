import { Pipe, PipeTransform } from '@angular/core';
import { ConverterService } from '@core/service/utility/converter.service';

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
    private converterService: ConverterService
  ) {
  }

  transform(arr: string[]): string {
    return this.converterService.toCSV(arr).join('');
  }

}
