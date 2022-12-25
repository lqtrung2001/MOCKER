import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Schema } from '@core/model/schema';
import { environment } from '@environment/environment';

@Injectable({
  providedIn: 'root'
})
export class SchemaService {

  constructor(
    private httpClient: HttpClient
  ) {
  }

  public getSchemasByProject(projectId: string): Observable<Schema[]> {
    return this.httpClient.get<Schema[]>(`${environment.apiUrl}/schema?projectId=${projectId}`);
  }

  saveOrUpdate(schema: Schema): Observable<string> {
    return this.httpClient.post<string>(`${environment.apiUrl}/schema`, schema);
  }

  deleteSchema(id: string): Observable<string> {
    return this.httpClient.delete<string>(`${environment.apiUrl}/schema/${id}`);
  }

  getSchema(id: string): Observable<Schema> {
    return this.httpClient.get<Schema>(`${environment.apiUrl}/schema/${id}`);
  }
}
