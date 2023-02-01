import { AfterViewInit, Component, Injector, Input, OnInit, ViewChild } from '@angular/core';
import { AbstractControl, FormGroup } from '@angular/forms';
import { AbstractComponent } from '@core/class/abstract.component';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Component({
  selector: 'moc-field',
  templateUrl: 'field.component.html',
  styleUrls: ['field.component.scss']
})
export class FieldComponent extends AbstractComponent implements OnInit, AfterViewInit {
  @ViewChild('inputElement') htmlInputElement: HTMLInputElement;
  @Input() type: string;
  @Input() placeholder: string;
  @Input() styles: string;
  @Input() classesField: string;
  @Input() classes: string;
  @Input() formControl: AbstractControl<any>;
  @Input() formGroup: FormGroup;
  @Input() formControlName: string;
  @Input() label: string;
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

  ngAfterViewInit(): void {
    if (!this.formControl && this.formGroup && this.formControlName) {
      this.formControl = this.formGroup.controls[this.formControlName];
    }
  }

  showPasswordChange(): void {
    this.isShowPassword = !this.isShowPassword;
    this.type = this.isShowPassword ? 'text' : 'password';
  }

}
