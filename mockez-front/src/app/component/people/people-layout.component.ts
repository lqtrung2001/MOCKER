import { AbstractComponent } from '@core/class/abstract.component';
import { Component, Injector } from '@angular/core';

/**
 * @author Do Quoc Viet
 */

@Component({
  selector: 'moc-people-layout',
  templateUrl: 'people-layout.component.html',
  styleUrls: ['people-layout.component.scss']
})
export class PeopleLayoutComponent extends AbstractComponent {
  constructor(
    injector: Injector
  ) {
    super(injector);
  }
}
