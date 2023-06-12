import { Component, Injector, Input, OnInit, ViewChild } from '@angular/core';
import { FormControl } from '@angular/forms';
import { AbstractSharedComponent } from '@shared/component/common/abstract-shared.component';

/**
 * @author Do Quoc Viet
 */

@Component({
  selector: 'moc-input',
  templateUrl: 'input.component.html',
  styleUrls: ['input.component.scss']
})
export class InputComponent extends AbstractSharedComponent implements OnInit {
  @ViewChild('inputElement') htmlInputElement: HTMLInputElement;
  @Input() readonly: boolean = false;
  @Input() mocRequired: boolean = false;
  @Input() type: 'number' | 'email' | 'password' | 'text';
  @Input() mocPlaceholder: string;
  @Input() styles: string;
  @Input() mocControl: FormControl;
  @Input() mocTextArea: boolean = false;
  @Input() formControlName: string;
  @Input() mocLabel: string;
  @Input() min: number;
  @Input() max: number;
  @Input() minLength: number;
  @Input() maxLength: number;
  @Input() mocAutoComplete: boolean = true;
  // For password type
  isShowEye: boolean = false;
  isShowPassword: boolean = false;

  constructor(
    injector: Injector
  ) {
    super(injector);
  }

  get isValidated(): boolean {
    return this.mocControl?.touched || this.mocControl?.dirty;
  }

  ngOnInit(): void {
    this.isShowEye = this.type === 'password';
  }

  showPasswordChange(): void {
    this.isShowPassword = !this.isShowPassword;
    this.type = this.isShowPassword ? 'text' : 'password';
  }

}
