import { Injectable } from '@angular/core';
import * as JsonToXML from 'js2xmlparser';

@Injectable({
  providedIn: 'root'
})
export class ConverterService {

  constructor() {
  }

  public JSONArrayToSQL(tableName: string, data: any[]): string[] {
    const result: string[] = [];
    data.forEach((values: any) => {
      result.push(`INSERT INTO ${tableName} (${Object.keys(values).toString()}) VALUES (${Object.values(values).map((value: any) => '"' + value + '"').toString()});\n`);
    });
    return result;
  };

  public JSONArrayToXML(data: any[]): string[] {
    if (!data) {
      return [];
    }
    return JsonToXML.parse('row', data).split('');
  };

  public JSONArrayToCSV(data: any[]): string[] {
    if (data[0]) {
      const replacer = (key: string, value: string) => {
        return value === null ? '' : value;
      };
      const header = Object.keys(data[0]);
      let csv = data.map(row => header.map(fieldName =>
        JSON.stringify(row[fieldName], replacer)).join(','));
      csv.unshift(header.join(','));
      csv = csv.join('\r\n').split('\r\n');
      return csv.map(r => r + '\n');
    }
    return [];
  };

  public JSONArrayToJSON(data: any[]): string[] {
    if (!data) {
      return [];
    }
    return [JSON.stringify(data, undefined, 2)];
  }

}
