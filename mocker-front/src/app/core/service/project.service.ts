import { Injectable, Injector } from '@angular/core';
import { Observable } from 'rxjs';
import { Project } from '@core/model/project';
import { environment } from '@environment/environment';
import { AppHttpService } from '@core/service/app-http.service';
import { HttpMethod } from '@core/class/enum/http-method';

/**
 * @author Do Quoc Viet
 */

@Injectable({
  providedIn: 'root'
})
export class ProjectService extends AppHttpService<Project> {

  getProject(id: string): Observable<Project> {
    return this.get(`${environment.API_URL}/project/${id}`);
  }

  getProjects(): Observable<Project[]> {
    return this.request<Project[]>(HttpMethod.GET, `${environment.API_URL}/project`);
  }

  saveOrUpdate(project: Project): Observable<string> {
    return this.request<string>(HttpMethod.POST, `${environment.API_URL}/project`, project);
  }

  deleteProject(id: string): Observable<string> {
    return this.request<string>(HttpMethod.DELETE, `${environment.API_URL}/project/${id}`);
  }

}
