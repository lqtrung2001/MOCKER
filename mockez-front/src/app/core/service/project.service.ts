import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Project } from '@core/model/Project.modal';
import { environment } from '@environment/environment';

@Injectable({
  providedIn: 'root'
})
export class ProjectService {

  constructor(
    private httpClient: HttpClient
  ) {
  }

  public getProjectByGroupId(groupId: string): Observable<Project[]>{
    return this.httpClient.get<Project[]>(`${environment.apiUrl}/project/${groupId}`);
  }
}
