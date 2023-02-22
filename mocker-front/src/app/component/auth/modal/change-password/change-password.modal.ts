import { AfterViewInit, ChangeDetectorRef, Component, Injector, OnInit } from '@angular/core';
import { AbstractModal } from '@core/class/abstract.modal';
import { FormControl, FormGroup, Validators } from '@angular/forms';
import { AuthService } from '@core/service/auth.service';
import { User } from '@core/model/user';
import { LocalStorageConstant } from '@core/constant/local-storage.constant';
import { ToastrProvider } from '@shared/modal/toastr-provider/toastr-provider';

/**
 * @author Do Quoc Viet
 */

export interface ChangePasswordModalOptions {
  id: string;
  oldPassword?: string;
  newPassword?: string;
}

type Controls = {
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
  formGroup: FormGroup<Controls>;
  isPasswordNotMatch: boolean = false;
  isShowOldPassword: boolean = true;

  constructor(
    injector: Injector,
    private authService: AuthService,
    private toastrProvider: ToastrProvider,
    private changeDetectorRef: ChangeDetectorRef
  ) {
    super(injector);
    this.formGroup = this.formBuilder.group({
      oldPassword: this.formBuilder.control(undefined, [Validators.required, Validators.minLength(5)]),
      newPassword: this.formBuilder.control(undefined, [Validators.required, Validators.minLength(5)]),
      confirmPassword: this.formBuilder.control(undefined, [Validators.required, Validators.minLength(5)])
    });
    this.formGroup.controls.confirmPassword.valueChanges.subscribe((value: string) => {
      const password: string = this.formGroup.controls.newPassword.value;
      this.isPasswordNotMatch = this.formGroup.controls.newPassword.valid
        && this.formGroup.controls.confirmPassword.valid
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
    this.formGroup.controls.oldPassword.patchValue(this.options.oldPassword);
  }

  submit(): void {
    this.formGroup.markAllAsTouched();
    if (this.isPasswordNotMatch || this.formGroup.invalid) {
      return;
    }
    const { oldPassword, newPassword } = this.formGroup.getRawValue();
    this.authService.changePassword(this.options.id, oldPassword, newPassword).subscribe((user: User) => {
      if (user) {
        user.password = newPassword;
        this.appConfigService.user = user;
        localStorage.setItem(LocalStorageConstant.AUTH, JSON.stringify(user));
        if (!this.isShowOldPassword) {
          // For set token
          this.authService.signIn(user.username!, user.password!).subscribe(() => {
            this.toastrProvider.showSuccess({
              body: 'Change password successfully'
            });
            this.close(true);
          });
        }
        this.toastrProvider.showSuccess({
          body: 'Change password successfully'
        });
        this.close(true);
      }
    });
  }
}
