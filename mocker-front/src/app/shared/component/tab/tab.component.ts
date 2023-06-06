import { SharedComponent } from '@shared/component/common/shared.component';
import { Component, Injector, Input } from '@angular/core';

/**
 * @author Do Quoc Viet
 */

@Component({
  selector: 'moc-tab',
  templateUrl: 'tab.component.html',
  styleUrls: ['tab.component.scss']
})
export class TabComponent extends SharedComponent {
  @Input() mocActive: boolean = false;
  @Input() mocIcon: string;
  @Input() mocTitle: string;

  constructor(injector: Injector) {
    super(injector);
  }
}
