import { Pipe, PipeTransform } from '@angular/core';
import { ConverterService } from '@core/service/utility/converter.service';
import { Strings } from '@shared/util/strings';

/**
 * @author Do Quoc Viet
 * @class XmlPipe
 * @date 02/03/2023
 */

@Pipe({
  name: 'xml'
})
export class XmlPipe implements PipeTransform {
  constructor(
    private converterService: ConverterService
  ) {
  }

  transform(arr: string[], tableName: string): string {
    return this.converterService.toXML(arr, tableName).join(Strings.EMPTY);
  }
}

