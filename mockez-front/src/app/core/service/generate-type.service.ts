import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { GenerateType } from '@core/model/generate-type';
import { HttpClient } from '@angular/common/http';
import { environment } from '@environment/environment';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Injectable({
  providedIn: 'root'
})
export class GenerateTypeService {

  constructor(
    private httpClient: HttpClient
  ) {
  }

  getGenerateType(id: string): Observable<GenerateType> {
    return this.httpClient.get<GenerateType>(`${environment.API_URL}/generate-type/${id}`);
  }

  getGenerateTypeByType(sqlTypeId: string): Observable<GenerateType[]> {
    return this.httpClient.get<GenerateType[]>(`${environment.API_URL}/generate-type/${sqlTypeId}`);
  }

  getGenerateTypes(): Observable<GenerateType[]> {
    return this.httpClient.get<GenerateType[]>(`${environment.API_URL}/generate-type/`);
  }
}
