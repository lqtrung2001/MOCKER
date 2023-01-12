import { Component, Input } from '@angular/core';
import { FormControl } from '@angular/forms';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Component({
  selector: 'app-field',
  templateUrl: 'field.component.html',
  styleUrls: ['field.component.scss']
})
export class FieldComponent {

  @Input() type: string;
  @Input() placeholder: string;
  @Input() style: string;
  @Input() class: string;
  @Input() formControl: FormControl;
  classWhenValid: string;

  get isValidated(): boolean {
    return this.formControl.touched || this.formControl.dirty;
  }

}
