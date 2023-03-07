import { Component, Injector } from '@angular/core';
import { AbstractComponent } from '@core/class/abstract.component';
import { Schema } from '@core/model/schema';
import { SchemaService } from '@core/service/schema.service';
import { Table } from '@core/model/table';

/**
 * @author Do Quoc Viet
 */

@Component({
  selector: 'moc-schema',
  templateUrl: 'schema.component.html',
  styleUrls: ['schema.component.scss']
})
export class SchemaComponent extends AbstractComponent {
  schema: Schema;

  constructor(
    injector: Injector,
    private schemaService: SchemaService
  ) {
    super(injector);
    const id = this.activatedRoute.snapshot.paramMap.get('id');
    if (id) {
      this.schemaService.getSchema(id).subscribe((schema: Schema): void => {
        this.schema = schema;
      });
    }
  }

  get tables(): Table[] {
    if (!this.schema) {
      return [];
    }
    const { tables, ...schema } = this.schema;
    return tables.map((table: Table) => {
      table.schema = schema as Schema;
      return table;
    });
  }

}
