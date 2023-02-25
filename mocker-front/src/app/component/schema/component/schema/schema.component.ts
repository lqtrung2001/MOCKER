import { Component, Injector } from '@angular/core';
import { AbstractComponent } from '@core/class/abstract.component';
import { Schema } from '@core/model/schema';
import { SchemaService } from '@core/service/schema.service';

/**
 * @author Do Quoc Viet
 * @date 22/02/2023
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
        console.log(this.schema);
      });
    }
  }
}
