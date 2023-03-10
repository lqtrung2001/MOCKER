import { Injectable } from '@angular/core';
import { StringUtil } from '@core/util/string.util';

/**
 * @author Do Quoc Viet
 */

@Injectable({
  providedIn: 'root'
})
export class ConverterUtil {

  public toJSON(arr: any[], tableName: string): any[] {
    if (!arr?.length) {
      return [];
    }
    return [JSON.stringify({
      [tableName]: arr
    }, null, 2)];
  }

  public toSQL(arr: any[], tableName: string): any[] {
    if (!arr?.length) {
      return [];
    }
    const keys: string = Object.keys(arr[0]).map((key: string) => `"${key}"`).join(', ');
    return arr.map((element: any) => {
      const values: string = Object.keys(arr[0]).map((key: string) => `"${element[key]}"`).join(', ').replace(/"/g, '\"');
      return `INSERT INTO "${tableName}" (${keys})
              VALUES (${values});  `;
    });
  }

  public toCSV(arr: any[]): any[] {
    if (!arr?.length) {
      return [];
    }
    const keys: string = Object.keys(arr[0]).map((key: string) => `"${key}"`).join(',') + '\n';
    const result: string[] = arr.map((element: any) => Object.keys(arr[0]).map((key: string) => `"${element[key]}"`).join(',') + '\n');
    result.unshift(keys);
    return result;
  }

  public toXML(arr: any[], tableName: string): any[] {
    if (!arr?.length) {
      return [];
    }
    return [this.variableToXml(arr, tableName)
      .replace(/\t<\/row>/g, '</row>')
      .replace(/<\/row><\//g, '</row>\n</')
    ];
  }

  private variableToXml(variable: any, arrayItemPropertyName: any = null): string {
    if (Array.isArray(variable)) {
      return `<${arrayItemPropertyName}>${variable.reduce((xml, propertyValue) => {
        return `${xml}\n\t<row>\n\t\t${(this.variableToXml(propertyValue))}</row>`;
      }, StringUtil.EMPTY)}</${arrayItemPropertyName}>`;
    }
    if (variable instanceof Object) {
      return Object.entries(variable).reduce((xml, [propertyName, propertyValue]) => {
        const value = this.variableToXml(propertyValue, propertyName);
        const tag = propertyValue instanceof Array ? value : `<${propertyName}>${value}</${propertyName}>\n\t\t`;
        return `${xml}${tag}`;
      }, StringUtil.EMPTY);
    }
    return variable;
  }

}
