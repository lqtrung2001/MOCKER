import { Pipe, PipeTransform } from '@angular/core';
import { ConverterService } from '@core/util/converter.service';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Pipe({
  name: 'sql'
})
export class SqlPipe implements PipeTransform {

  constructor(
    private converterService: ConverterService
  ) {
  }

  transform(value: string[], tableName: string): string {
    return this.converterService.JSONArrayToSQL(tableName, value).join('');
  }

}