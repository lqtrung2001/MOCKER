import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { environment } from '@environment/environment';
import { Group } from '@core/model/group';

@Injectable({
  providedIn: 'root'
})
export class GroupService {

  constructor(
    private httpClient: HttpClient
  ) {
  }

  public getGroupsWithAccess(): Observable<Group[]> {
    return this.httpClient.get<Group[]>(`${environment.apiUrl}/group`);
  }

  getGroup(id: string): Observable<Group> {
    return this.httpClient.get<Group>(`${environment.apiUrl}/group/${id}`);
  }

  public saveOrUpdate(group: Group): Observable<string> {
    return this.httpClient.post<string>(`${environment.apiUrl}/group`, group);
  }

  delete(id: string): Observable<string> {
    return this.httpClient.delete<string>(`${environment.apiUrl}/group/${id}`);
  }
}
