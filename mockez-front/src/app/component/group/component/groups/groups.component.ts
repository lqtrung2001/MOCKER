import { Component, Injector } from '@angular/core';
import { AbstractComponent } from '@core/class/abstract.component';

/**
 * @author Do Quoc Viet
 */

@Component({
  selector: 'moc-groups',
  templateUrl: 'groups.component.html',
  styleUrls: ['groups.component.scss']
})
export class GroupsComponent extends AbstractComponent {
  constructor(
    injector: Injector
  ) {
    super(injector);
  }
}
