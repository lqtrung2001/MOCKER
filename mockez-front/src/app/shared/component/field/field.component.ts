import { Component, Input, OnInit, ViewChild } from '@angular/core';
import { FormControl } from '@angular/forms';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Component({
  selector: 'moc-field',
  templateUrl: 'field.component.html',
  styleUrls: ['field.component.scss']
})
export class FieldComponent implements OnInit {
  @ViewChild('inputElement') htmlInputElement: HTMLInputElement;
  @Input() type: string;
  @Input() placeholder: string;
  @Input() styles: string;
  @Input() classesField: string;
  @Input() classes: string;
  @Input() formControl: FormControl;
  @Input() label: string;
  isShowEye: boolean = false;
  isShowPassword: boolean = false;

  get isValidated(): boolean {
    return this.formControl.touched || this.formControl.dirty;
  }

  ngOnInit(): void {
    this.isShowEye = this.type === 'password';
  }

  showPasswordChange(): void {
    this.isShowPassword = !this.isShowPassword;
    this.type = this.isShowPassword ? 'text' : 'password';
  }

}
