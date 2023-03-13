import { AbstractComponent } from '@core/common/abstract.component';
import { Component, Injector } from '@angular/core';

/**
 * @author Do Quoc Viet
 */

@Component({
  selector: 'moc-general-layout',
  templateUrl: 'general-layout.component.html',
  styleUrls: ['general-layout.component.scss']
})
export class GeneralLayoutComponent extends AbstractComponent {
  constructor(
    injector: Injector
  ) {
    super(injector);
  }
}
