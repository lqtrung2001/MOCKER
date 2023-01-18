import { Component } from '@angular/core';
import { FormBuilder, FormControl, Validators } from '@angular/forms';
import { AbstractComponent } from '@core/class/abstract-component';
import { AuthConstant, SignInMethod } from '@app/component/auth/component/auth.constant';
import { AuthService } from '@app/core/service/auth.service';
import { ModalService } from '@shared/modal/modal-service/modal-service.service';
import { VerificationModal, VerificationModalOptions } from '@app/component/auth/modal/verification/verification.modal';
import { User } from '@core/model/user';
import { LocalStorageConstant } from '@core/constant/local-storage.constant';
import { Router } from '@angular/router';

type FromControls = {
  username: FormControl,
  password: FormControl,
  confirmPassword: FormControl
};

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Component({
  selector: 'moc-sign-up',
  templateUrl: 'sign-up.component.html',
  styleUrls: ['sign-up.component.scss']
})
export class SignUpComponent extends AbstractComponent {
  signInMethods: SignInMethod[] = [];
  formControls: FromControls;
  isExistedUsername: boolean = false;
  isPasswordNotMatch: boolean = false;

  constructor(
    private formBuilder: FormBuilder,
    private authService: AuthService,
    private modalService: ModalService,
    private router: Router
  ) {
    super();
    localStorage.clear();
    this.signInMethods = AuthConstant.signInMethods;
    this.formControls = {
      username: formBuilder.control(undefined, [Validators.required, Validators.email]),
      password: formBuilder.control(undefined, [Validators.required, Validators.minLength(5)]),
      confirmPassword: formBuilder.control(undefined, [Validators.required, Validators.minLength(5)])
    };
    this.formControls.username.valueChanges.subscribe(() => {
      this.isExistedUsername = false;
    });
    this.formControls.confirmPassword.valueChanges.subscribe((value: string) => {
      const password: string = this.formControls.password.value;
      this.isPasswordNotMatch = this.formControls.password.valid
        && this.formControls.confirmPassword.valid
        && !!value
        && !!password
        && value !== password;
    });
  }

  submit(): void {
    Object.values(this.formControls).forEach((control: FormControl) => control?.markAsDirty());
    if (this.formControls.username.invalid) {
      return;
    }
    const { username, password } = this.getRawValue(this.formControls);
    this.authService.isExistedUsername(username).subscribe((isExisted: boolean) => {
      if (isExisted) {
        this.isExistedUsername = true;
        return;
      }
      this.authService.sendVerificationCode(username).subscribe((success: boolean) => {
        if (success) {
          const validateOTPModalOptions: VerificationModalOptions = {
            username,
            password
          };
          this.modalService.open(VerificationModal, validateOTPModalOptions).onResult().subscribe((user: User) => {
            if (user) {
              // For set token
              localStorage.setItem(LocalStorageConstant.AUTH, JSON.stringify(user));
              this.authService.signIn(username, password).subscribe(() => {
                this.router.navigate(['/']).then();
              });
            }
          });
        }
      });
    });
  }

}
