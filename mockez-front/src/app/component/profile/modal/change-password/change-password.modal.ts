import { Component } from '@angular/core';
import { Modal } from '@shared/modal/modal-service/model/modal.model';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { UserService } from '@core/service/user.service';
import { AuthService } from '@core/service/auth.service';
import { ModalProvider } from '@shared/modal/modal-provider/modal-provider.modal';
import { AppConfigProviderService } from '@core/service/app-config-provider.service';
import { User } from '@core/model/user';

export interface ChangePasswordModalOptions {
  username: string;
}

@Component({
  selector: 'app-change-password-modal',
  templateUrl: './change-password.modal.html',
  styleUrls: ['./change-password.modal.scss']
})
export class ChangePasswordModal extends Modal {

  options: ChangePasswordModalOptions;
  formGroup: FormGroup;
  invalid: boolean = false;

  override onInjectInputs(options: ChangePasswordModalOptions) {
    this.options = options;
  }

  constructor(
    private formBuilder: FormBuilder,
    private userService: UserService,
    private authService: AuthService,
    private modalProvider: ModalProvider,
    private appConfigProviderService: AppConfigProviderService
  ) {
    super();
    this.formGroup = formBuilder.group({
      currentPassword: formBuilder.control('', [Validators.required]),
      newPassword: formBuilder.control('', [Validators.required]),
      renewPassword: formBuilder.control('', [Validators.required])
    });
  }

  isCanChange(): boolean {
    const { newPassword, renewPassword } = this.formGroup.getRawValue();
    return newPassword === renewPassword && !this.formGroup.invalid;
  }

  submit(): void {
    if (this.formGroup.invalid) {
      return;
    }
    const { currentPassword, newPassword } = this.formGroup.getRawValue();
    this.userService.changePassword(
      this.appConfigProviderService.auth.id!,
      currentPassword,
      newPassword
    ).subscribe((user: User) => {
      user.password = newPassword;
      localStorage.setItem('user', JSON.stringify(user));
      this.close(user);
    });
  }
}
