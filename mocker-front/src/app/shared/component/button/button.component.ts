import { AfterViewInit, Component, Injector, Input } from '@angular/core';
import { AbstractSharedComponent } from '@shared/component/abstract-shared/abstract-shared.component';

/**
 * @author Do Quoc Viet
 * @class ButtonComponent
 * @date 12/02/2023
 */

@Component({
  selector: 'moc-button',
  templateUrl: 'button.component.html',
  styleUrls: ['button.component.scss']
})
export class ButtonComponent extends AbstractSharedComponent implements AfterViewInit {
  @Input() label: string;
  @Input() styles: string;
  @Input() icon: string;

  constructor(
    injector: Injector
  ) {
    super(injector);
  }

}
