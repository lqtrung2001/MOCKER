import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { environment } from '@environment/environment';
import { Group } from '@core/model/group';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Injectable({
  providedIn: 'root'
})
export class GroupService {

  constructor(
    private httpClient: HttpClient
  ) {
  }

  getGroupsWithAccess(): Observable<Group[]> {
    return this.httpClient.get<Group[]>(`${environment.API_URL}/group`);
  }

  getGroup(id: string): Observable<Group> {
    return this.httpClient.get<Group>(`${environment.API_URL}/group/${id}`);
  }

  saveOrUpdate(group: Group): Observable<string> {
    return this.httpClient.post<string>(`${environment.API_URL}/group`, group);
  }

  delete(id: string): Observable<string> {
    return this.httpClient.delete<string>(`${environment.API_URL}/group/${id}`);
  }
}
