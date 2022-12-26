import {Component} from '@angular/core';
import {Modal} from '@shared/modal/modal-service/model/modal.model';
import {FormBuilder, FormControl, FormGroup, Validators} from "@angular/forms";
import {AuthService} from "@core/service/auth.service";
import {User} from "@core/model/user";
import {UserService} from "@core/service/user.service";
import {Router} from "@angular/router";
import {ModalProvider} from "@shared/modal/modal-provider/modal-provider.modal";

export interface SignupModalOptions {
  username: string,
  password?: string
}

@Component({
  selector: 'app-signup-modal',
  templateUrl: 'signup.modal.html',
  styleUrls: ['signup.modal.scss']
})
export class SignupModal extends Modal {

  options: SignupModalOptions;
  otpCode: FormControl;

  onInjectInputs(options: SignupModalOptions): void {
    this.options = options;
  }

  constructor(
    private formBuilder: FormBuilder,
    private authService: AuthService,
    private userService: UserService,
    private router: Router,
    private modalProvider: ModalProvider
  ) {
    super();
    this.otpCode = formBuilder.control('', [Validators.required]);
  }

  submit(): void {
    const user: User = new User();
    user.username = this.options.username;
    user.password = this.options.password;

    this.authService.validateAndSave(user, this.otpCode.value)
      .subscribe((user: User) => {
        if (user) {
          if (this.options.password) {
            user.password = this.options.password;
            localStorage.setItem('user', JSON.stringify(user));
            this.close(true);
          } else {
            this.modalProvider.showInformation(`Password is OTP Code: ${this.otpCode.value}`).subscribe(() => {
              this.close(true);
            });
          }
        }
      })
  }
}
