import { Pipe, PipeTransform } from '@angular/core';
import { ConverterService } from '@core/service/utility/converter.service';
import { Strings } from '@shared/util/strings';

/**
 * @author Do Quoc Viet
 * @class SqlPipe
 * @date 02/03/2023
 */

@Pipe({
  name: 'sql'
})
export class SqlPipe implements PipeTransform {
  constructor(
    private converterService: ConverterService
  ) {
  }

  transform(array: string[], tableName: string): string {
    return this.converterService.toSQL(array, tableName).join(Strings.EMPTY);
  }

}
