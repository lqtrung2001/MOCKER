import { Injectable } from '@angular/core';
import { SchemaModel } from '@core/domain/model/entity/schema.model';
import { AbstractService } from '@core/service/abstract.service';
import { Observable } from 'rxjs';
import { TableModel } from '@core/domain/model/entity/table.model';
import { HttpMethodEnum } from '@core/domain/enum/http-method.enum';
import { TableRelationModel } from '@core/domain/model/entity/table-relation.model';
import { RoleEnum } from '@core/domain/enum/role.enum';
import { StringUtil } from '@core/util/string.util';

/**
 * @author Do Quoc Viet
 */

@Injectable({
  providedIn: 'root'
})
export class SchemaService extends AbstractService<SchemaModel> {
  override ENTITY_URL: string = 'schema';

  getSchemasByProjectId(projectId: string): Observable<SchemaModel[]> {
    return this.request<SchemaModel[]>(HttpMethodEnum.GET, `${this.API_URL}/${this.ENTITY_URL}?projectId=${projectId}`);
  }

  getSchemas(roles: RoleEnum[]): Observable<SchemaModel[]> {
    return this.request<SchemaModel[]>(HttpMethodEnum.GET, `${this.API_URL}/${this.ENTITY_URL}?${roles ? `roles=${roles.join(',')}` : StringUtil.EMPTY}`);
  }

  getTablesBySchema(schemaId: string): Observable<TableModel[]> {
    return this.request<TableModel[]>(HttpMethodEnum.GET, `${this.API_URL}/${this.ENTITY_URL}/${schemaId}/tables`);
  }

  getTableRelationsBySchema(schemaId: string): Observable<TableRelationModel[]> {
    return this.request<TableRelationModel[]>(HttpMethodEnum.GET, `${this.API_URL}/${this.ENTITY_URL}/${schemaId}/tables/table-relations`);
  }

}
