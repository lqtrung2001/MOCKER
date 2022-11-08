import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable, Observer } from 'rxjs';
import { Schema } from '@core/model/Schema.modal';
import { environment } from '@environment/environment';

@Injectable({
  providedIn: 'root'
})
export class SchemaService {

  constructor(
    private httpClient: HttpClient
  ) { }

  public getSchemaByProjectId(projectId: string): Observable<Schema[]>{
    return this.httpClient.get<Schema[]>(`${environment.apiUrl}/schema/${projectId}`);
  }
}
