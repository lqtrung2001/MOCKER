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
  override ENTITY_URL = 'generate';

  generateWithTable(table: TableModel, row: number): Observable<any[]> {
    return this.request<any[]>(HttpMethodEnum.POST, `${this.API_URL}/${this.ENTITY_URL}?row=${row}`, table);
  }

  generateBySchema(schemaId: string): Observable<DataModel> {
    return this.request<DataModel>(HttpMethodEnum.GET, `${this.API_URL}/${this.ENTITY_URL}/schema/${schemaId}`);
    // const result: DataModel = {
    //   ROLE2: {
    //     index: 1,
    //     values: [
    //       {
    //         'role': 'Estimator',
    //         'custom': 'null'
    //       },
    //       {
    //         'role': 'Subcontractor',
    //         'custom': 'null'
    //       },
    //       {
    //         'role': 'Construction Manager',
    //         'custom': 'null'
    //       }
    //     ]
    //   },
    //   PRODUCT: {
    //     index: 2,
    //     values: [
    //       {
    //         'id': 'Construction Manager',
    //         'username': 'peassebyl5'
    //       },
    //       {
    //         'id': 'Supervisor',
    //         'username': 'hbugsln'
    //       },
    //       {
    //         'id': 'Subcontractor',
    //         'username': 'rmaypoleen'
    //       }
    //     ]
    //   },
    //   USER: {
    //     index: 3,
    //     values: [
    //       {
    //         'domain': 'bravesites.com',
    //         'id': 'Supervisor'
    //       },
    //       {
    //         'domain': 'joomla.org',
    //         'id': 'Construction Expeditor'
    //       },
    //       {
    //         'domain': 'irs.gov',
    //         'id': 'Project Manager'
    //       }
    //     ]
    //   }
    // };
    // return of(result);
  }
}
