import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { SchemaModel } from '@core/domain/model/schema.model';
import { AbstractService } from '@core/service/abstract.service';

/**
 * @author Do Quoc Viet
 */

@Injectable({
  providedIn: 'root'
})
export class SchemaService extends AbstractService<SchemaModel> {
  override ENTITY_URL = 'schema';

  getSchemasByProject(projectId: string): Observable<SchemaModel[]> {
    return this.httpClient.get<SchemaModel[]>(`${this.API_URL}/${this.ENTITY_URL}?projectId=${projectId}`);
  }

}
