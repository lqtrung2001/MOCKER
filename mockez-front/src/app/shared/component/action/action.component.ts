import { AbstractComponent } from '@core/class/abstract.component';
import { Component, Injector, Input } from '@angular/core';

/**
 * @author Do Quoc Viet
 */

export interface Action {
  id: string;
  icon?: string;
  label: string;
}

@Component({
  selector: 'moc-action',
  templateUrl: 'action.component.html',
  styleUrls: ['action.component.scss']
})
export class ActionComponent extends AbstractComponent {
  @Input() actions: Action[] = [{
    id: '1',
    label: 'Switch Account'
  }, {
    id: '2',
    label: 'Profile'
  }, {
    id: '3',
    label: 'Sign out'
  }];

  constructor(
    injector: Injector
  ) {
    super(injector);
  }
}
