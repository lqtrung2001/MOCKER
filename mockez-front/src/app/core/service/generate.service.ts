import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Field } from '../model/field';
import { environment } from '@environment/environment';
import { Table } from '@core/model/table';

export interface GenerateReq {
  row: number;
  fields: Field[];
}

@Injectable({
  providedIn: 'root'
})
export class GenerateService {

  constructor(
    private httpClient: HttpClient
  ) {
  }

  generate(tableId: string, row: number): Observable<any[]> {
    return this.httpClient.post<any[]>(`${environment.apiUrl}/generate/${tableId}`, row);
  }

  generateWithTable(table: Table, row: number): Observable<any[]> {
    return this.httpClient.post<any[]>(`${environment.apiUrl}/generate?row=${row}`, table);
  }
}
