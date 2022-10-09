import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { GenerateType } from '@core/model/GenerateType.modal';

@Injectable({
  providedIn: 'root',
})
export class GenerateTypeService {

  public getGenerateType(id: string): Observable<GenerateType> {
    return null;
  }

  public getGenerateTypeByType(: string): Observable<GenerateType> {

  }

}
