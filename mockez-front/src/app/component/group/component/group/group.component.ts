import { Component, Injector } from '@angular/core';
import { AbstractComponent } from '@core/class/abstract.component';

@Component({
  selector: 'moc-group',
  templateUrl: 'group.component.html',
  styleUrls: ['group.component.scss']
})
export class GroupComponent extends AbstractComponent {
  constructor(
    injector: Injector
  ) {
    super(injector);
  }

}
