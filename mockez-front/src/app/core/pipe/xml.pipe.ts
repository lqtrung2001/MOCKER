import { Pipe, PipeTransform } from '@angular/core';
import * as JsonToXML from 'js2xmlparser';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Pipe({
  name: 'xml'
})
export class XmlPipe implements PipeTransform {

  transform(value: string[], tableName: string): string {
    return JsonToXML.parse('row', value);
  }
}

