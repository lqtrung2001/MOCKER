import { Injectable } from '@angular/core';
import { ProjectModel } from '@core/domain/model/project.model';
import { AbstractService } from '@core/service/abstract.service';
import { Observable } from 'rxjs';
import { SchemaModel } from '@core/domain/model/schema.model';
import { HttpMethodEnum } from '@core/domain/enum/http-method.enum';

/**
 * @author Do Quoc Viet
 */

@Injectable({
  providedIn: 'root'
})
export class ProjectService extends AbstractService<ProjectModel> {
  override ENTITY_URL = 'project';

  getSchemasByProject(projectId: string): Observable<SchemaModel[]> {
    return this.request<SchemaModel[]>(HttpMethodEnum.GET, `${this.API_URL}/${this.ENTITY_URL}/${projectId}/schemas`);
  }
}
