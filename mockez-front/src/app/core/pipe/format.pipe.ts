import { Pipe, PipeTransform } from '@angular/core';
import { ConverterService } from '../util/converter.service';
import { FormatEnum } from '../config/format.enum';

@Pipe({
  name: 'formatPipe'
})
export class FormatPipe implements PipeTransform {

  constructor(
    private converterService: ConverterService
  ) {
  }

  transform(data: any[], format: string, tableName?: string): string[] {
    const result: string[] = [];
    switch (format) {
      case FormatEnum.SQL:
        result.push(...this.converterService.JSONArrayToSQL(tableName!, data));
        break;
      case FormatEnum.JSON:
        result.push(...this.converterService.JSONArrayToJSON(data));
        break;
      case FormatEnum.CSV:
        result.push(...this.converterService.JSONArrayToCSV(data));
        break;
      case FormatEnum.XML:
        result.push(...this.converterService.JSONArrayToXML(data));
        break;
      default:
        throw new Error(`Invalid format: ${format}`);
    }
    return result;
  }

}
