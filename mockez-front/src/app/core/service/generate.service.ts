import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Field } from '../model/Field.modal';
import { environment } from '@environment/environment';

export interface GenerateReq {
  row: number;
  fields: Field[];
}

@Injectable({
  providedIn: 'root'
})
export class GenerateService {

  constructor(private httpClient: HttpClient) {
  }

  public generate(generateReq: GenerateReq): Observable<any[]> {
    return this.httpClient.post<any[]>(`${environment.apiUrl}/generate`, generateReq);
  }
}
