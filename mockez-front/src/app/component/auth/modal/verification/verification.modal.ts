import { AbstractModal } from '@core/class/abstract.modal';
import { Component } from '@angular/core';
import { FormBuilder, FormControl, Validators } from '@angular/forms';
import { AuthService } from '@core/service/auth.service';
import { User } from '@core/model/user';
import { of } from 'rxjs';
import { ModalService } from '@shared/modal/modal-service/modal-service.service';
import {
  ChangePasswordModal,
  ChangePasswordModalOptions
} from '@app/component/auth/modal/change-password/change-password.modal';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
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
    private formBuilder: FormBuilder,
    private authService: AuthService,
    private modalService: ModalService
  ) {
    super();
    this.verificationCode = formBuilder.control(undefined,
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
        }, () => {
          this.isInvalidVerificationCode = true;
          return of(false);
        }).subscribe((user: User) => {
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
