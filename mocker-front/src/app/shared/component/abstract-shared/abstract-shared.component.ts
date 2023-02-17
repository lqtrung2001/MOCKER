import { AfterViewInit, Component, Injector, Input } from '@angular/core';
import { AbstractComponent } from '@core/class/abstract.component';

/**
 * @author Do Quoc Viet
 * @class AbstractSharedComponent
 * @date 11/02/2023
 */

@Component({
  templateUrl: 'abstract-shared.component.html'
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
