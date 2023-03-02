import { Pipe, PipeTransform } from '@angular/core';
import { ConverterService } from '@core/service/utility/converter.service';
import { Strings } from '@shared/util/strings';

/**
 * @author Do Quoc Viet
 * @class MocJsonPipe
 * @date 02/03/2023
 */

@Pipe({
  name: 'mocJson'
})
export class MocJsonPipe implements PipeTransform {
  constructor(
    private converterService: ConverterService
  ) {
  }

  transform(arr: string[], tableName: string): string {
    return this.converterService.toJSON(arr, tableName).join(Strings.EMPTY);
  }

}
