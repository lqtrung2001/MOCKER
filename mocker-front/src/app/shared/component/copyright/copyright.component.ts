import { Component, Injector, Input } from '@angular/core';
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
  @Input() mocHiddenPrivacy: boolean = false;

  constructor(
    injector: Injector
  ) {
    super(injector);
  }

}
