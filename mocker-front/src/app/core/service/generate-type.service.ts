import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { GenerateTypeModel } from '@core/domain/model/generate-type.model';
import { AbstractService } from '@core/service/abstract.service';
import { HttpMethodEnum } from '@core/domain/enum/http-method.enum';

/**
 * @author Do Quoc Viet
 */

@Injectable({
  providedIn: 'root'
})
export class GenerateTypeService extends AbstractService<GenerateTypeModel> {
  static GENERATE_TYPE_API = 'generate-type';

  getGenerateType(id: string): Observable<GenerateTypeModel> {
    return this.get(`${this.API_URL}/${GenerateTypeService.GENERATE_TYPE_API}/${id}`);
  }

  getGenerateTypeByType(sqlTypeId: string): Observable<GenerateTypeModel[]> {
    return this.request<GenerateTypeModel[]>(HttpMethodEnum.GET, `${this.API_URL}/${GenerateTypeService.GENERATE_TYPE_API}/${sqlTypeId}`);
  }

  getGenerateTypes(): Observable<GenerateTypeModel[]> {
    return this.request<GenerateTypeModel[]>(HttpMethodEnum.GET, `${this.API_URL}/${GenerateTypeService.GENERATE_TYPE_API}/`);
  }
}
