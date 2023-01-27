import { AbstractComponent } from '@core/class/abstract.component';
import { Component, Injector } from '@angular/core';

/**
 * @author Do Quoc Viet
 */

@Component({
  selector: 'moc-group-layout',
  templateUrl: 'group-layout.component.html',
  styleUrls: ['group-layout.component.scss']
})
export class GroupLayoutComponent extends AbstractComponent {
  constructor(
    injector: Injector
  ) {
    super(injector);
  }
}
