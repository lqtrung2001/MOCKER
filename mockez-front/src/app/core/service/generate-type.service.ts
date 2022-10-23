import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { GenerateType } from '@core/model/GenerateType.modal';
import { HttpClient } from '@angular/common/http';
import { environment } from '@environment/environment';

@Injectable({
  providedIn: 'root'
})
export class GenerateTypeService {

  constructor(
    private httpClient: HttpClient
  ) {
  }

  public getGenerateType(id: string): Observable<GenerateType> {
    return this.httpClient.get<GenerateType>(`${environment.apiUrl}/generate-type/${id}`);
  }

  public getGenerateTypeByType(sqlTypeId: string): Observable<GenerateType[]> {
    return this.httpClient.get<GenerateType[]>(`${environment.apiUrl}/generate-type/${sqlTypeId}`);
  }

  public getGenerateTypes(): Observable<GenerateType[]> {
    return this.httpClient.get<GenerateType[]>(`${environment.apiUrl}/generate-type/`);
  }
}
