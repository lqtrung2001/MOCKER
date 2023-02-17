import { AbstractComponent } from '@core/class/abstract.component';
import { Component, Injector } from '@angular/core';

/**
 * @author Do Quoc Viet
 * @date 05/02/2023
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
