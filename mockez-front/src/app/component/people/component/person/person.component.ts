import { AbstractComponent } from '@core/class/abstract.component';
import { Component, Injector } from '@angular/core';

/**
 * @author Do Quoc Viet
 */

@Component({
  selector: 'moc-person',
  templateUrl: 'person.component.html',
  styleUrls: ['person.component.scss']
})
export class PersonComponent extends AbstractComponent {
  constructor(
    injector: Injector
  ) {
    super(injector);
  }
}
