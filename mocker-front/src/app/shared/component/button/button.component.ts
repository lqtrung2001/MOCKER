import { Component, Injector, Input } from '@angular/core';
import { AbstractSharedComponent } from '@shared/component/common/abstract-shared.component';
import { FormControl } from '@angular/forms';

/**
 * @author Do Quoc Viet
 */

@Component({
  selector: 'moc-button',
  templateUrl: 'button.component.html',
  styleUrls: ['button.component.scss']
})
export class ButtonComponent extends AbstractSharedComponent {
  @Input() label: string;
  @Input() icon: string;
  @Input() control: FormControl;
  clicked: boolean;

  constructor(
    injector: Injector
  ) {
    super(injector);
  }

  get isValidated(): boolean {
    return this.clicked || this.control?.touched || this.control?.dirty;
  }

}
