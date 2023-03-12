import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { SchemaModel } from '@core/domain/model/schema.model';
import { AbstractService } from '@core/service/abstract.service';
import { HttpMethodEnum } from '@core/domain/enum/http-method.enum';

/**
 * @author Do Quoc Viet
 */

@Injectable({
  providedIn: 'root'
})
export class SchemaService extends AbstractService<SchemaModel> {
  static SCHEMA_API = 'schema';

  getSchemasByProject(projectId: string): Observable<SchemaModel[]> {
    return this.httpClient.get<SchemaModel[]>(`${this.API_URL}/${SchemaService.SCHEMA_API}?projectId=${projectId}`);
  }

  getSchemas(): Observable<SchemaModel[]> {
    return this.request<SchemaModel[]>(HttpMethodEnum.GET, `${this.API_URL}/${SchemaService.SCHEMA_API}`);
  }

  saveOrUpdate(schema: SchemaModel): Observable<SchemaModel> {
    return this.post(`${this.API_URL}/${SchemaService.SCHEMA_API}`, schema);
  }

  deleteSchema(id: string): Observable<string> {
    return this.request<string>(HttpMethodEnum.DELETE, `${this.API_URL}/${SchemaService.SCHEMA_API}/${id}`);
  }

  getSchema(id: string): Observable<SchemaModel> {
    return this.httpClient.get<SchemaModel>(`${this.API_URL}/${SchemaService.SCHEMA_API}/${id}`);
  }

}
