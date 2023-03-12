import { Component, Injector } from '@angular/core';
import { AbstractSharedComponent } from '@shared/component/common/abstract-shared.component';

@Component({
  selector: 'moc-copyright',
  templateUrl: 'copyright.component.html',
  styleUrls: ['copyright.component.scss']
})
export class CopyrightComponent extends AbstractSharedComponent {
  constructor(
    injector: Injector
  ) {
    super(injector);
  }
}
