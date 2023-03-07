import { Component, Injector } from '@angular/core';
import { AbstractComponent } from '@core/class/abstract.component';
import { Schema } from '@core/model/schema';
import { SchemaService } from '@core/service/schema.service';
import { Table } from '@core/model/table';
import { TableService } from '@app/core/service/table.service';

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
  tables: Table[] = [];

  constructor(
    injector: Injector,
    private schemaService: SchemaService,
    private tableService: TableService
  ) {
    super(injector);
    const id = this.activatedRoute.snapshot.paramMap.get('id');
    if (id) {
      this.schemaService.getSchema(id).subscribe((schema: Schema): void => {
        this.schema = schema;
        this.tableService.getTablesBySchema(schema.id).subscribe((tables: Table[]): void => {
          this.tables = tables;
          console.log(this.tables)
        });
      });
    }
  }

}
