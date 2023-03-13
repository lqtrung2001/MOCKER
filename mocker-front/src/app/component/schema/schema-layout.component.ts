import { Component, Injector } from '@angular/core';
import { AbstractComponent } from '@core/common/abstract.component';

/**
 * @author Do Quoc Viet
 */

@Component({
  selector: 'moc-schema-layout',
  templateUrl: 'schema-layout.component.html',
  styleUrls: ['schema-layout.component.scss']
})
export class SchemaLayoutComponent extends AbstractComponent {
  constructor(
    injector: Injector
  ) {
    super(injector);
  }
}
