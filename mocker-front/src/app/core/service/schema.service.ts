import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Schema } from '@core/model/schema';
import { environment } from '@environment/environment';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Injectable({
  providedIn: 'root'
})
export class SchemaService {

  constructor(
    private httpClient: HttpClient
  ) {
  }

  getSchemasByProject(projectId: string): Observable<Schema[]> {
    return this.httpClient.get<Schema[]>(`${environment.API_URL}/schema?projectId=${projectId}`);
  }

  saveOrUpdate(schema: Schema): Observable<string> {
    return this.httpClient.post<string>(`${environment.API_URL}/schema`, schema);
  }

  deleteSchema(id: string): Observable<string> {
    return this.httpClient.delete<string>(`${environment.API_URL}/schema/${id}`);
  }

  getSchema(id: string): Observable<Schema> {
    return this.httpClient.get<Schema>(`${environment.API_URL}/schema/${id}`);
  }
}
