import { AbstractModal } from '@core/class/abstract.modal';
import { Component, Injector } from '@angular/core';
import { FormControl, Validators } from '@angular/forms';
import { AuthService } from '@core/service/auth.service';
import { User } from '@core/model/user';
import { catchError, of } from 'rxjs';
import {
  ChangePasswordModal,
  ChangePasswordModalOptions
} from '@app/component/auth/modal/change-password/change-password.modal';

/**
 * @author Do Quoc Viet
 */

export interface VerificationModalOptions {
  username: string,
  password?: string
}

@Component({
  selector: 'moc-verification-modal',
  templateUrl: 'verification.modal.html',
  styleUrls: ['verification.modal.scss']
})
export class VerificationModal extends AbstractModal {
  override options: VerificationModalOptions;
  verificationCode: FormControl;
  isInvalidVerificationCode: boolean = false;

  constructor(
    injector: Injector,
    private authService: AuthService
  ) {
    super(injector);
    this.verificationCode = this.formBuilder.control(undefined,
      [Validators.required,
        Validators.minLength(5),
        Validators.maxLength(5)]);
    this.verificationCode.valueChanges.subscribe((verificationCode: string) => {
      this.isInvalidVerificationCode = false;
      if (verificationCode?.length === 5 && !this.verificationCode.invalid) {
        this.authService.verifyAndSave(verificationCode, {
          ...new User(),
          username: this.options.username,
          password: this.options.password
        }).pipe(catchError(() => {
          this.isInvalidVerificationCode = true;
          return of(new User());
        })).subscribe((user: User) => {
          if (user) {
            if (this.options.password) {
              // Sign up
              user.password = this.options.password;
              this.close(user);
            } else {
              // Forget password
              const changePasswordModalOptions: ChangePasswordModalOptions = {
                id: user.id!,
                oldPassword: verificationCode
              };
              this.modalService.open(ChangePasswordModal, changePasswordModalOptions).onResult().subscribe((success: boolean) => {
                if (success) {
                  this.close(true);
                }
              });
            }
          }
        });
      }
    });
  }

  resendVerificationCode(): void {
    const { username } = this.options;
    this.isInvalidVerificationCode = false;
    this.verificationCode.patchValue(undefined);
    this.verificationCode.disable();
    this.authService.sendVerificationCode(username).subscribe((success: boolean) => {
      if (success) {
        this.verificationCode.enable();
        this.verificationCode.markAsUntouched();
        this.verificationCode.markAsPristine();
      }
    });
  }

}
