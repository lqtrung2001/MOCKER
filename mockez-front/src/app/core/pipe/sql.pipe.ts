import { Pipe, PipeTransform } from '@angular/core';
import { ConverterService } from '@core/util/converter.service';

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
