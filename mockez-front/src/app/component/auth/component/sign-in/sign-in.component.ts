import { Component } from '@angular/core';
import { FormBuilder, FormControl, Validators } from '@angular/forms';
import { AbstractComponent } from '@core/class/abstract-component';
import { User } from '@core/model/user';
import { UserService } from '@core/service/user.service';
import { Router } from '@angular/router';
import { AuthService } from '@core/service/auth.service';
import { ModalProvider } from '@shared/modal/modal-provider/modal-provider.modal';
import { TranslateService } from '@ngx-translate/core';
import { AuthConstant, SignInMethod } from '@app/component/auth/component/auth.constant';
import { AppConfigService } from '@core/service/app-config.service';
import { LocalStorageConstant } from '@core/constant/local-storage.constant';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

type FormControls = {
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
  formControls: FormControls;
  invalidAuth: boolean = false;

  constructor(
    private formBuilder: FormBuilder,
    private userService: UserService,
    private router: Router,
    private authService: AuthService,
    private modalProvider: ModalProvider,
    private translateService: TranslateService,
    private appConfigService: AppConfigService
  ) {
    super();
    localStorage.clear();
    this.signInMethods = AuthConstant.signInMethods;
    this.formControls = {
      username: formBuilder.control(undefined, [Validators.required, Validators.email]),
      password: formBuilder.control(undefined, [Validators.required, Validators.minLength(5)])
    };
    this.formControls.username.valueChanges.subscribe(() => this.invalidAuth = false);
    this.formControls.password.valueChanges.subscribe(() => this.invalidAuth = false);
    appConfigService.user = undefined;
  }

  submit(): void {
    this.markAllAsDirtyAndTouched(this.formControls);
    if (this.invalid(this.formControls)) {
      return;
    }
    const { username, password } = this.getRawValue(this.formControls);
    this.authService.signIn(username!, password!).subscribe((userAgent: string) => {
      if (userAgent) {
        this.userService.findOneByUsername(userAgent)
          .subscribe((user: User) => {
            if (user) {
              user.password = password;
              localStorage.setItem(LocalStorageConstant.AUTH, JSON.stringify(user));
              this.appConfigService.user = user;
              this.router.navigate(['/']).then();
            }
          });
      } else {
        this.invalidAuth = true;
      }
    });
  }

}
