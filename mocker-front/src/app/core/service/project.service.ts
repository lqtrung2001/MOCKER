import { Injectable } from '@angular/core';
import { ProjectModel } from '@core/domain/model/entity/project.model';
import { AbstractService } from '@core/service/abstract.service';
import { Observable } from 'rxjs';
import { SchemaModel } from '@core/domain/model/entity/schema.model';
import { HttpMethodEnum } from '@core/domain/enum/http-method.enum';

/**
 * @author Do Quoc Viet
 */

@Injectable({
  providedIn: 'root'
})
export class ProjectService extends AbstractService<ProjectModel> {
  override ENTITY_URL: string = 'project';

  getProjectsByGroupId(groupId: string): Observable<ProjectModel[]> {
    return this.request<ProjectModel[]>(HttpMethodEnum.GET, `${this.API_URL}/${this.ENTITY_URL}?groupId=${groupId}`);
  }

  getSchemasByProjectId(projectId: string): Observable<SchemaModel[]> {
    return this.request<SchemaModel[]>(HttpMethodEnum.GET, `${this.API_URL}/${this.ENTITY_URL}/${projectId}/schemas`);
  }
}
