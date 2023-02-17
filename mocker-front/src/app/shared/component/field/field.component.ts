import { Component, Injector, Input, OnInit, ViewChild } from '@angular/core';
import { FormControl } from '@angular/forms';
import { AbstractSharedComponent } from '@shared/component/abstract-shared/abstract-shared.component';

/**
 * @author Do Quoc Viet
 */

@Component({
  selector: 'moc-field',
  templateUrl: 'field.component.html',
  styleUrls: ['field.component.scss']
})
export class FieldComponent extends AbstractSharedComponent implements OnInit {
  @ViewChild('inputElement') htmlInputElement: HTMLInputElement;
  @Input() type: string;
  @Input() placeholder: string;
  @Input() styles: string;
  @Input() formControl: FormControl;
  @Input() formControlName: string;
  @Input() label: string;
  @Input() min: number;
  @Input() max: number;
  @Input() minLength: number;
  @Input() maxLength: number;
  // For password type
  isShowEye: boolean = false;
  isShowPassword: boolean = false;

  constructor(
    injector: Injector
  ) {
    super(injector);
  }

  get isValidated(): boolean {
    return this.formControl?.touched || this.formControl?.dirty;
  }

  ngOnInit(): void {
    this.isShowEye = this.type === 'password';
  }

  showPasswordChange(): void {
    this.isShowPassword = !this.isShowPassword;
    this.type = this.isShowPassword ? 'text' : 'password';
  }

}
