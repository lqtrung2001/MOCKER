import { Component, Injector, Input } from '@angular/core';
import { AbstractSharedComponent } from '@shared/component/common/abstract-shared.component';
import { ControlValueAccessor, FormControl } from '@angular/forms';

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
export class ButtonComponent extends AbstractSharedComponent implements ControlValueAccessor {
  @Input() label: string;
  @Input() styles: string;
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

  registerOnChange(fn: any): void {
  }

  registerOnTouched(fn: any): void {
  }

  setDisabledState(isDisabled: boolean): void {
  }

  writeValue(obj: any): void {
  }

}
