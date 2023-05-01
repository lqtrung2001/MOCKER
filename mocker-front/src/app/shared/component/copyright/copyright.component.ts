import { Component, Injector } from '@angular/core';
import { SharedComponent } from '@shared/component/common/shared.component';

/**
 * @author Do Quoc Viet
 */

@Component({
  selector: 'moc-copyright',
  templateUrl: 'copyright.component.html',
  styleUrls: ['copyright.component.scss']
})
export class CopyrightComponent extends SharedComponent {
  constructor(
    injector: Injector
  ) {
    super(injector);
  }

}
