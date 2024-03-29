import { Injectable } from '@angular/core';
import { GenerateTypeModel } from '@core/domain/model/entity/generate-type.model';
import { AbstractService } from '@core/service/abstract.service';

/**
 * @author Do Quoc Viet
 */

@Injectable({
  providedIn: 'root'
})
export class GenerateTypeService extends AbstractService<GenerateTypeModel> {
  override ENTITY_URL: string = 'generate-type';
}
