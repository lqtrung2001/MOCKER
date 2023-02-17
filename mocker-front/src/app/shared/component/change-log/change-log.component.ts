import { Component, Injector } from '@angular/core';
import { AbstractSharedComponent } from '@shared/component/abstract-shared/abstract-shared.component';

@Component({
  selector: 'moc-change-log',
  templateUrl: 'change-log.component.html',
  styleUrls: ['change-log.component.scss']
})
export class ChangeLogComponent extends AbstractSharedComponent {
  constructor(
    injector: Injector
  ) {
    super(injector);
  }
}
