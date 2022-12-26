import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Project } from '@core/model/project';
import { environment } from '@environment/environment';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Injectable({
  providedIn: 'root'
})
export class ProjectService {

  constructor(
    private httpClient: HttpClient
  ) {
  }

  getProject(id: string): Observable<Project> {
    return this.httpClient.get<Project>(`${environment.apiUrl}/project/${id}`);
  }

  getProjects(): Observable<Project[]> {
    return this.httpClient.get<Project[]>(`${environment.apiUrl}/project`);
  }

  saveOrUpdate(project: Project): Observable<string> {
    return this.httpClient.post<string>(`${environment.apiUrl}/project`, project);
  }

  deleteProject(id: string): Observable<string> {
    return this.httpClient.delete<string>(`${environment.apiUrl}/project/${id}`);
  }
}
