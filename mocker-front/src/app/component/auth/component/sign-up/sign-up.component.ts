import { Component, Injector } from '@angular/core';
import { FormControl, FormGroup, Validators } from '@angular/forms';
import { AbstractComponent } from '@core/common/abstract.component';
import { AuthConstant, SignInMethod } from '@app/component/auth/auth.constant';
import { AuthService } from '@app/core/service/auth.service';
import { VerificationModal, VerificationModalOptions } from '@app/component/auth/modal/verification/verification.modal';
import { UserModel } from '@core/domain/model/entity/user.model';
import { LocalStorageConstant } from '@core/constant/local-storage.constant';

type Controls = {
  username: FormControl,
  password: FormControl,
  confirmPassword: FormControl
};

/**
 * @author Do Quoc Viet
 */

@Component({
  selector: 'moc-sign-up',
  templateUrl: 'sign-up.component.html',
  styleUrls: ['sign-up.component.scss']
})
export class SignUpComponent extends AbstractComponent {
  signInMethods: SignInMethod[] = [];
  isExistedUsername: boolean = false;
  isPasswordNotMatch: boolean = false;
  formGroup: FormGroup<Controls>;

  constructor(
    injector: Injector,
    private authService: AuthService
  ) {
    super(injector);
    localStorage.clear();
    this.signInMethods = AuthConstant.signInMethods;
    this.formGroup = this.formBuilder.group({
      username: this.formBuilder.control(undefined, [Validators.required, Validators.email]),
      password: this.formBuilder.control(undefined, [Validators.required, Validators.minLength(5)]),
      confirmPassword: this.formBuilder.control(undefined, [Validators.required, Validators.minLength(5)])
    });
    this.formGroup.controls.username.valueChanges.subscribe(() => {
      this.isExistedUsername = false;
    });
    this.formGroup.controls.confirmPassword.valueChanges.subscribe((value: string) => {
      const password: string = this.formGroup.controls.password.value;
      this.isPasswordNotMatch = this.formGroup.controls.password.valid
        && this.formGroup.controls.confirmPassword.valid
        && !!value
        && !!password
        && value !== password;
    });
  }

  submit(): void {
    this.formGroup.markAllAsTouched();
    if (this.formGroup.invalid) {
      return;
    }
    const { username, password } = this.formGroup.getRawValue();
    new Promise((resolve): void => {
      this.authService.isExistedUsername(username).subscribe((isExisted: boolean): void => {
        if (isExisted) {
          this.isExistedUsername = true;
          return;
        }
        resolve(username);
      });
    }).then((): void => {
      this.authService.sendVerificationCode(username)
        .subscribe((success: boolean): void => {
          if (success) {
            const validateOTPModalOptions: VerificationModalOptions = {
              username,
              password
            };
            this.modalService.open(VerificationModal, validateOTPModalOptions).subscribe((user: UserModel): void => {
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
