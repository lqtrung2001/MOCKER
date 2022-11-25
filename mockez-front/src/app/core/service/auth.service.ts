import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class AuthService {

  constructor(
    private httpClient: HttpClient
  ) {
  }

  login(username: string, password: string): Observable<any> {
    return this.httpClient.post('http://localhost:8080/login', {
      username,
      password
    }, { observe: 'response' });
  }
}
