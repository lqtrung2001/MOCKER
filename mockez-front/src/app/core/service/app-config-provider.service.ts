import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class AppConfigProviderService {

  private _loading: boolean = false;

  get loading(): boolean {
    return this._loading;
  }

  set loading(value: boolean) {
    this._loading = value;
  }
}
