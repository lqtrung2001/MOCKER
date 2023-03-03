import { Injectable, Injector } from '@angular/core';
import { Observable } from 'rxjs';
import { Schema } from '@core/model/schema';
import { environment } from '@environment/environment';
import { AppHttpService } from '@core/service/app-http.service';
import { HttpMethod } from '@core/class/enum/http-method';

/**
 * @author Do Quoc Viet
 */

@Injectable({
  providedIn: 'root'
})
export class SchemaService extends AppHttpService<Schema> {
  constructor(
    injector: Injector
  ) {
    super(injector);
  }

  getSchemasByProject(projectId: string): Observable<Schema[]> {
    return this.httpClient.get<Schema[]>(`${environment.API_URL}/schema?projectId=${projectId}`);
  }

  getSchemas(): Observable<Schema[]> {
    return this.request<Schema[]>(HttpMethod.GET, `${environment.API_URL}/schema`);
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
