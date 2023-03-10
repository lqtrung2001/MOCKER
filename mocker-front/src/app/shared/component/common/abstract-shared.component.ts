import { AfterViewInit, Component, Injector, Input } from '@angular/core';
import { AbstractComponent } from '@core/common/abstract.component';

/**
 * @author Do Quoc Viet
 */

@Component({
  template: ''
})
export abstract class AbstractSharedComponent extends AbstractComponent implements AfterViewInit {
  @Input() class: string;
  @Input() selfClass: string;

  protected constructor(
    injector: Injector
  ) {
    super(injector);
  }

  ngAfterViewInit(): void {
    // For important
    this.class?.replace(/ /g, ' !');
    this.selfClass?.replace(/ /g, ' !');
  }

}
