import * as FileSaver from 'file-saver';
import {StringUtil} from '@core/util/string.util';
import {DataModel} from '@core/domain/model/data.model';
import {FormatEnum} from '@core/domain/enum/format.enum';

/**
 * @author Do Quoc Viet
 */

export class DownloadUtil {

  static download(data: any[] | DataModel, format: FormatEnum, fileName: string = 'MOCKER', tableName?: string): void {
    if (data instanceof Array) {
      let metadata: any[];
      switch (format) {
        case 'SQL':
          metadata = this.dataToSQL(data, tableName!);
          break;
        case 'JSON':
          metadata = this.dataToJSON(data, tableName!);
          break;
        case 'XML':
          metadata = this.dataToXML(data, tableName!);
          break;
        default:
          metadata = this.dataToCSV(data);
      }
      FileSaver.saveAs(new File(metadata, `${fileName}.${format.toLowerCase()}`,
        {type: 'text/plain;charset=utf-8'}));
    } else {
      const metadata: any[] = [];
      if (format === FormatEnum.JSON) {
        const obj: any = Object.keys(data).reduce((previous: any, current: any): any => {
          if (typeof previous === 'string') {
            return {
              [previous]: data[previous].values,
              [current]: data[current].values
            };
          }
          previous[current] = data[current].values;
          return previous;
        });
        metadata.push(...this.dataToJSON(obj, StringUtil.EMPTY));
      } else {
        Object.keys(data).forEach((key: string): void => {
          switch (format) {
            case 'SQL':
              metadata.push(`/* TABLE: [${key}] */\n`);
              metadata.push(...this.dataToSQL(data[key].values, key));
              break;
            case 'XML':
              metadata.push(`<-- TABLE: [${key}] -->\n`);
              metadata.push(...this.dataToXML(data[key].values, key));
              break;
            default:
              metadata.push(...this.dataToCSV(data[key].values));
          }
          metadata.push('\n');
        });
      }
      FileSaver.saveAs(new File(metadata, `${fileName}.${format.toLowerCase()}`,
        {type: 'text/plain;charset=utf-8'}));
    }
  }

  static dataToJSON(data: any, tableName?: string): any[] {
    if (data instanceof Array) {
      return [JSON.stringify({
        [tableName!]: data
      }, null, 2)];
    }
    return [JSON.stringify(data, null, 2)];
  }

  static dataToSQL(arr: any[], tableName: string): any[] {
    if (!arr?.length) {
      return [];
    }
    const keys: string = Object.keys(arr[0]).map((key: string): string => `${key}`).join(', ');
    return arr.map((element: any): string => {
      const values: string = Object.keys(arr[0]).map((key: string): string => `"${element[key].replace(/"/g, '\\\"')}"`).join(', ');
      // @formatter:off
      return `INSERT INTO "${tableName.toUpperCase()}" (${keys})\n\tVALUES (${values});\n`;
      // @formatter:on
    });
  }

  static dataToCSV(arr: any[]): any[] {
    if (!arr?.length) {
      return [];
    }
    const keys: string = Object.keys(arr[0]).map((key: string): string => `"${key}"`).join(',') + '\n';
    const result: string[] = arr.map((element: any): string => Object.keys(arr[0]).map((key: string): string => `"${element[key]}"`).join(',') + '\n');
    result.unshift(keys);
    return result;
  }

  static dataToXML(arr: any[], tableName: string): any[] {
    if (!arr?.length) {
      return [];
    }
    return [this.variableToXml(arr, tableName)
      .replace(/\t<\/row>/g, '</row>')
      .replace(/<\/row><\//g, '</row>\n</')
    ];
  }

  private static variableToXml(variable: any, arrayItemPropertyName: any = null): string {
    if (Array.isArray(variable)) {
      return `<${arrayItemPropertyName}>${variable.reduce((xml, propertyValue): string => {
        return `${xml}\n\t<row>\n\t\t${(this.variableToXml(propertyValue))}</row>`;
      }, StringUtil.EMPTY)}</${arrayItemPropertyName}>`;
    }
    if (variable instanceof Object) {
      return Object.entries(variable).reduce((xml: string, [propertyName, propertyValue]): string => {
        const value: string = this.variableToXml(propertyValue, propertyName);
        const tag: string = propertyValue instanceof Array ? value : `<${propertyName}>${value}</${propertyName}>\n\t\t`;
        return `${xml}${tag}`;
      }, StringUtil.EMPTY);
    }
    return variable;
  }

}
