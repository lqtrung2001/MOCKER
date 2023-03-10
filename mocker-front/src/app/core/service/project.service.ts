import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { ProjectModel } from '@core/domain/model/project.model';
import { AbstractService } from '@core/service/abstract.service';
import { HttpMethodEnum } from '@core/domain/enum/http-method.enum';

/**
 * @author Do Quoc Viet
 */

@Injectable({
  providedIn: 'root'
})
export class ProjectService extends AbstractService<ProjectModel> {
  static PROJECT_API = 'project';

  getProject(id: string): Observable<ProjectModel> {
    return this.get(`${this.API_URL}/${ProjectService.PROJECT_API}/${id}`);
  }

  getProjects(): Observable<ProjectModel[]> {
    return this.request<ProjectModel[]>(HttpMethodEnum.GET, `${this.API_URL}/${ProjectService.PROJECT_API}`);
  }

  saveOrUpdate(project: ProjectModel): Observable<string> {
    return this.request<string>(HttpMethodEnum.POST, `${this.API_URL}/${ProjectService.PROJECT_API}`, project);
  }

  deleteProject(id: string): Observable<string> {
    return this.request<string>(HttpMethodEnum.DELETE, `${this.API_URL}/${ProjectService.PROJECT_API}/${id}`);
  }

}
