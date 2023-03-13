import { Pipe, PipeTransform } from '@angular/core';
import { ConverterUtil } from '@core/util/converter.util';
import { StringUtil } from '@core/util/string.util';

/**
 * @author Do Quoc Viet
 */

@Pipe({
  name: 'mocJson'
})
export class MocJsonPipe implements PipeTransform {
  constructor(
    private converterService: ConverterUtil
  ) {
  }

  transform(arr: string[], tableName: string): string {
    return this.converterService.toJSON(arr, tableName).join(StringUtil.EMPTY);
  }

}
