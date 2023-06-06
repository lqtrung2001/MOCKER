import { Injectable } from '@angular/core';
import { ProjectModel } from '@core/domain/model/entity/project.model';
import { AbstractService } from '@core/service/abstract.service';
import { Observable } from 'rxjs';
import { HttpMethodEnum } from '@core/domain/enum/http-method.enum';
import { RoleEnum } from '@core/domain/enum/role.enum';
import { StringUtil } from '@core/util/string.util';
import { SchemaModel } from '@core/domain/model/entity/schema.model';

/**
 * @author Do Quoc Viet
 */

@Injectable({
  providedIn: 'root'
})
export class ProjectService extends AbstractService<ProjectModel> {
  override ENTITY_URL: string = 'project';

  getProjects(roles: RoleEnum[]): Observable<ProjectModel[]> {
    return this.request<ProjectModel[]>(HttpMethodEnum.GET, `${this.API_URL}/${this.ENTITY_URL}?${roles ? `roles=${roles.join(',')}` : StringUtil.EMPTY}`);
  }

  getSchemasByProjectId(projectId: string, roles: RoleEnum[] = []): Observable<SchemaModel[]> {
    return this.request<SchemaModel[]>(HttpMethodEnum.GET, `${this.API_URL}/${this.ENTITY_URL}/${projectId}/schemas?${roles ? `roles=${roles.join(',')}` : StringUtil.EMPTY}`);
  }

}
