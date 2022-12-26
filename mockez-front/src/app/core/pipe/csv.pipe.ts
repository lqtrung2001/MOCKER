import { Pipe, PipeTransform } from '@angular/core';
import { ConverterService } from '@core/util/converter.service';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Pipe({
  name: 'csv'
})
export class CsvPipe implements PipeTransform {

  constructor(
    private converterService: ConverterService
  ) {
  }

  transform(value: string[]): string {
    return this.converterService.JSONArrayToCSV(value).join('');
  }

}
