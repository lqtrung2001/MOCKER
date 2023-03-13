import { Pipe, PipeTransform } from '@angular/core';
import { ConverterUtil } from '@core/util/converter.util';
import { StringUtil } from '@core/util/string.util';

/**
 * @author Do Quoc Viet
 */

@Pipe({
  name: 'sql'
})
export class SqlPipe implements PipeTransform {
  constructor(
    private converterService: ConverterUtil
  ) {
  }

  transform(array: string[], tableName: string): string {
    return this.converterService.toSQL(array, tableName).join(StringUtil.EMPTY);
  }

}
