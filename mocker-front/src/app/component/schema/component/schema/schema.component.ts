import { Component, Injector } from '@angular/core';
import { AbstractComponent } from '@core/common/abstract.component';
import { SchemaModel } from '@core/domain/model/schema.model';
import { SchemaService } from '@core/service/schema.service';
import { TableModel } from '@core/domain/model/table.model';

/**
 * @author Do Quoc Viet
 */

@Component({
  selector: 'moc-schema',
  templateUrl: 'schema.component.html',
  styleUrls: ['schema.component.scss']
})
export class SchemaComponent extends AbstractComponent {
  schema: SchemaModel;

  constructor(
    injector: Injector,
    private schemaService: SchemaService
  ) {
    super(injector);
    const id = this.activatedRoute.snapshot.paramMap.get('id');
    if (id) {
      this.schemaService.getSchema(id).subscribe((schema: SchemaModel): void => {
        this.schema = schema;
      });
    }
  }

  get tables(): TableModel[] {
    if (!this.schema) {
      return [];
    }
    const { tables, ...schema } = this.schema;
    return tables.map((table: TableModel) => {
      table.schema = schema as SchemaModel;
      return table;
    });
  }

}
