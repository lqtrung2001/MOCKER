import { Component, Injector } from '@angular/core';
import { AbstractComponent } from '@core/class/abstract.component';

/**
 * @author Do Quoc Viet
 * @date 22/02/2023
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
