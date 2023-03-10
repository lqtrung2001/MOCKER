import { Component, Injector } from '@angular/core';
import { FormControl, FormGroup, Validators } from '@angular/forms';
import { AbstractComponent } from '@core/common/abstract.component';
import { UserModel } from '@core/domain/model/user.model';
import { UserService } from '@core/service/user.service';
import { AuthService } from '@core/service/auth.service';
import { AuthConstant, SignInMethod } from '@app/component/auth/auth.constant';
import { LocalStorageConstant } from '@core/constant/local-storage.constant';

/**
 * @author Do Quoc Viet
 * @date 05/02/2023
 */

type Controls = {
  username: FormControl,
  password: FormControl
};

@Component({
  selector: 'moc-sign-in',
  templateUrl: 'sign-in.component.html',
  styleUrls: ['sign-in.component.scss']
})
export class SignInComponent extends AbstractComponent {
  signInMethods: SignInMethod[] = [];
  formGroup: FormGroup<Controls>;
  invalidAuth: boolean = false;

  constructor(
    injector: Injector,
    private userService: UserService,
    private authService: AuthService
  ) {
    super(injector);
    localStorage.clear();
    this.signInMethods = AuthConstant.signInMethods;
    this.formGroup = this.formBuilder.group({
      username: this.formBuilder.control(undefined, [Validators.required, Validators.email]),
      password: this.formBuilder.control(undefined, [Validators.required, Validators.minLength(5)])
    });
    this.formGroup.controls.username.valueChanges.subscribe(() => this.invalidAuth = false);
    this.formGroup.controls.password.valueChanges.subscribe(() => this.invalidAuth = false);
    this.appConfigService.user = undefined;
  }

  submit(): void {
    this.formGroup.markAllAsTouched();
    if (this.formGroup.invalid) {
      return;
    }
    const { username, password } = this.formGroup.getRawValue();
    this.authService.signIn(username!, password!).subscribe((userAgent: string) => {
      if (userAgent) {
        this.userService.findOneByUsername(userAgent)
          .subscribe((user: UserModel) => {
            if (user) {
              user.password = password;
              localStorage.setItem(LocalStorageConstant.AUTH, JSON.stringify(user));
              this.appConfigService.user = user;
              this.router.navigate(['/']).then(() => {
                this.toastProvider.showSuccess({
                  title: 'Login',
                  body: 'Login successfully'
                });
              });
            }
          });
      } else {
        this.invalidAuth = true;
      }
    });
  }

  signInWithMethod(signInMethod: SignInMethod): void {
    this.toastProvider.showInformation({
      body: 'This method not available in the application right now. Please try again later.'
    });
  }
}
