import { Component } from '@angular/core';
import { Modal } from '@shared/modal/modal-service/model/modal.model';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { UserService } from '@core/service/user.service';
import { AuthService } from '@core/service/auth.service';
import { HttpErrorResponse, HttpResponse } from '@angular/common/http';
import { User } from '@app/core/model/user';
import { ModalProvider } from '@shared/modal/modal-provider/modal-provider.modal';

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
    private modalProvider: ModalProvider
  ) {
    super();
    this.formGroup = formBuilder.group({
      oldPassword: formBuilder.control('', [Validators.required]),
      newPassword: formBuilder.control('', [Validators.required]),
      renewPassword: formBuilder.control('', [Validators.required])
    });
  }

  isCanChange(): boolean {
    return this.formGroup.get('newPassword')?.value === this.formGroup.get('renewPassword')?.value && !this.formGroup.invalid;
  }

  submit(): void {
    if (this.formGroup.invalid) {
      return;
    }
    const oldPassword = this.formGroup.get('oldPassword')?.value;
    this.authService.login(this.options.username, oldPassword)
      .subscribe((httpResponse: HttpResponse<any>) => {
        const token = httpResponse.headers.get('Authorization');
        const userAgent = httpResponse.headers.get('User-Agent');
        if (token && userAgent === this.options.username) {
          this.invalid = false;
          this.userService.findOneByUsername(this.options.username).subscribe((user: User) => {
            user.password = this.formGroup.get('newPassword')?.value;
            this.userService.update(user).subscribe((id: string) => {
              if (id) {
                // successfully updated
                localStorage.setItem('user', JSON.stringify(user));
                this.modalProvider.showInformation('Change Password Success').subscribe(() => {
                  user.version = user.version! + 1;
                  this.close(user);
                });
              }
            });
          });
        } else {
          this.invalid = true;
        }
      }, (httpErrorResponse: HttpErrorResponse) => {
        this.invalid = true;
      });

  }
}
