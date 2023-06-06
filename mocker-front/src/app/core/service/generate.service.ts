import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { TableModel } from '@core/domain/model/entity/table.model';
import { AbstractService } from '@core/service/abstract.service';
import { HttpMethodEnum } from '@core/domain/enum/http-method.enum';
import { DataModel } from '@core/domain/model/data.model';

/**
 * @author Do Quoc Viet
 */

@Injectable({
  providedIn: 'root'
})
export class GenerateService extends AbstractService<any> {
  override ENTITY_URL: string = 'generate';

  generateWithTable(table: TableModel): Observable<any[]> {
    return this.request<any[]>(HttpMethodEnum.POST, `${this.API_URL}/${this.ENTITY_URL}`, table);
  }

  generateBySchema(schemaId: string): Observable<DataModel> {
    return this.request<DataModel>(HttpMethodEnum.GET, `${this.API_URL}/${this.ENTITY_URL}/schema/${schemaId}`);
  }
}
