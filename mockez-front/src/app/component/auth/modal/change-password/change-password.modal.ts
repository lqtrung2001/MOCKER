import { AfterViewInit, ChangeDetectorRef, Component, OnInit } from '@angular/core';
import { AbstractModal } from '@core/class/abstract.modal';
import { FormBuilder, FormControl, Validators } from '@angular/forms';
import { AbstractComponent } from '@core/class/abstract-component';
import { AuthService } from '@core/service/auth.service';
import { User } from '@core/model/user';
import { AppConfigService } from '@core/service/app-config.service';
import { LocalStorageConstant } from '@core/constant/local-storage.constant';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

export interface ChangePasswordModalOptions {
  id: string;
  oldPassword?: string;
  newPassword?: string;
}

type formControls = {
  oldPassword: FormControl;
  newPassword: FormControl;
  confirmPassword: FormControl;
}

@Component({
  selector: 'moc-change-password-modal',
  templateUrl: 'change-password.modal.html',
  styleUrls: ['change-password.modal.scss']
})
export class ChangePasswordModal extends AbstractModal implements OnInit, AfterViewInit {
  override options: ChangePasswordModalOptions;
  formControls: formControls;
  isPasswordNotMatch: boolean = false;
  isShowOldPassword: boolean = true;

  constructor(
    private formBuilder: FormBuilder,
    private authService: AuthService,
    private appConfigService: AppConfigService,
    private changeDetectorRef: ChangeDetectorRef
  ) {
    super();
    this.formControls = {
      oldPassword: formBuilder.control(undefined, [Validators.required, Validators.minLength(5)]),
      newPassword: formBuilder.control(undefined, [Validators.required, Validators.minLength(5)]),
      confirmPassword: formBuilder.control(undefined, [Validators.required, Validators.minLength(5)])
    };
    this.formControls.confirmPassword.valueChanges.subscribe((value: string) => {
      const password: string = this.formControls.newPassword.value;
      this.isPasswordNotMatch = this.formControls.newPassword.valid
        && this.formControls.confirmPassword.valid
        && !!value
        && !!password
        && value !== password;
    });
  }

  ngAfterViewInit(): void {
    this.changeDetectorRef.detectChanges();
  }

  ngOnInit(): void {
    // isShowOldPassword is false when forget password and want to change password
    this.isShowOldPassword = !this.options.oldPassword;
    this.formControls.oldPassword.patchValue(this.options.oldPassword);
  }

  submit(): void {
    const abstractComponent: AbstractComponent = new AbstractComponent();
    abstractComponent.markAllAsDirtyAndTouched(this.formControls);
    if (this.isPasswordNotMatch || abstractComponent.invalid(this.formControls)) {
      return;
    }
    const { oldPassword, newPassword } = abstractComponent.getRawValue(this.formControls);
    this.authService.changePassword(this.options.id, oldPassword, newPassword).subscribe((user: User) => {
      if (user) {
        user.password = newPassword;
        this.appConfigService.user = user;
        localStorage.setItem(LocalStorageConstant.AUTH, JSON.stringify(user));
        if (!this.isShowOldPassword) {
          // For set token
          this.authService.signIn(user.username!, user.password!).subscribe(() => {
            this.close(true);
          });
        }
      }
    });
  }
}
