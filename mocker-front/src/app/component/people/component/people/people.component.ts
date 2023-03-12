import { AbstractComponent } from '@core/common/abstract.component';
import { Component, Injector } from '@angular/core';

/**
 * @author Do Quoc Viet
 */

@Component({
  selector: 'moc-people',
  templateUrl: 'people.component.html',
  styleUrls: ['people.component.scss']
})
export class PeopleComponent extends AbstractComponent {
  constructor(
    injector: Injector
  ) {
    super(injector);
  }
}
