import { Injectable } from '@angular/core';
import { SQLType } from '@core/model/sql-type';
import { GenerateType } from '@core/model/generate-type';
import { User } from '@core/model/user';
import { ModalProvider } from '@shared/modal/modal-provider/modal-provider.modal';

@Injectable({
  providedIn: 'root'
})
export class AppConfigProviderService {

  private _isLoading: boolean = false;
  private _sqlTypes: SQLType[] = [];
  private _generateTypes: GenerateType[] = [];
  private _currentSchemaId: string | undefined;
  private _currentProjectId: string | undefined;

  constructor(
    private modalProvider: ModalProvider
  ) {
  }

  get isLoading(): boolean {
    return this._isLoading;
  }

  set isLoading(value: boolean) {
    this._isLoading = value;
  }

  get sqlTypes(): SQLType[] {
    return this._sqlTypes;
  }

  set sqlTypes(value: SQLType[]) {
    this._sqlTypes = value;
  }

  get generateTypes(): GenerateType[] {
    return this._generateTypes;
  }

  set generateTypes(value: GenerateType[]) {
    this._generateTypes = value;
  }

  get currentSchemaId(): string | undefined {
    return this._currentSchemaId;
  }

  set currentSchemaId(value: string | undefined) {
    this._currentSchemaId = value;
  }

  get currentProjectId(): string | undefined {
    return this._currentProjectId;
  }

  set currentProjectId(value: string | undefined) {
    this._currentProjectId = value;
  }

  get auth(): User {
    const store = window.localStorage.getItem('user');
    if (!store) {
      throw new Error('User not found in local storage');
    } else {
      return JSON.parse(store) as User;
    }
  }

}
