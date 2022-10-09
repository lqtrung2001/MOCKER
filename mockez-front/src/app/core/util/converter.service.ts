import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class ConverterService {

  constructor() {
  }

  public JSONArrayToSQL(data: any[]): string[] {
    return [];
  };

  public JSONArrayToXML(data: any[]): string[] {
    return [];
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
      return csv.join('\r\n').split('\r\n');
    }
    return [];
  };

  public JSONArrayToJSON(data: any[]): string[] {
    JSON.stringify(data, null, '\t').split('\t');
    return [];
  }

}
