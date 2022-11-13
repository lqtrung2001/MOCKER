import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { environment } from '@environment/environment';

@Injectable({
  providedIn: 'root'
})
export class LoginService {

  constructor(
    private httpClient: HttpClient
  ) {
  }

  public login(email: string, password: string): Observable<boolean> {
    return this.httpClient.post<boolean>(`${environment.apiUrl}/login`, { email, password });
  }

  public signup(email: string, password: string): Observable<boolean> {
    return this.httpClient.post<boolean>(`${environment.apiUrl}/signup`, { email, password });
  }


}
