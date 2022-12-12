import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Project } from '@core/model/project';
import { environment } from '@environment/environment';

@Injectable({
  providedIn: 'root'
})
export class ProjectService {

  constructor(
    private httpClient: HttpClient
  ) {
  }

  public getProject(id: string): Observable<Project> {
    return this.httpClient.get<Project>(`${environment.apiUrl}/project/${id}`);
  }

  public getProjects(): Observable<Project[]> {
    return this.httpClient.get<Project[]>(`${environment.apiUrl}/project`);
  }

  public createProject(project: Project): Observable<string> {
    return this.httpClient.post<string>(`${environment.apiUrl}/project`, project);
  }
}
