import { AbstractComponent } from '@core/common/abstract.component';
import { Component, Injector, Input } from '@angular/core';

/**
 * @author Do Quoc Viet
 */

@Component({
  template: ''
})
export abstract class SharedComponent extends AbstractComponent {
  @Input() mocClass: string;

  protected constructor(injector: Injector) {
    super(injector);
  }

}
