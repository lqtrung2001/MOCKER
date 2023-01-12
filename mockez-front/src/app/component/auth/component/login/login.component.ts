import { Component } from '@angular/core';
import { FormBuilder, FormControl, Validators } from '@angular/forms';
import { AbstractComponent } from '@shared/util/abstract-component';
import { User } from '@core/model/user';
import { UserService } from '@core/service/user.service';
import { Router } from '@angular/router';
import { AuthService } from '@core/service/auth.service';
import { AppConfigService } from '@core/service/app-config.service';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

export interface LoginMethod {
  name: string;
  icon: string;
}

@Component({
  selector: 'app-login',
  templateUrl: 'login.component.html',
  styleUrls: ['login.component.scss']
})
export class LoginComponent extends AbstractComponent {

  loginMethods: LoginMethod[] = [];
  formControls: {
    username: FormControl,
    password: FormControl
  };

  constructor(
    private formBuilder: FormBuilder,
    private userService: UserService,
    private router: Router,
    private authService: AuthService,
    private appConfigService: AppConfigService
  ) {
    super();
    this.initSupportLoginMethods();
    this.formControls = {
      username: formBuilder.control(undefined, [Validators.required, Validators.email]),
      password: formBuilder.control(undefined, [Validators.required])
    };
  }

  submit(): void {
    if (this.invalid(this.formControls)) {
      return;
    }
    const user: User = this.getRawValue(this.formControls);
    this.authService.login(user.username!, user.password!).subscribe((success: boolean) => {
      if (success) {
        this.appConfigService.user = this.appConfigService.userLocalStorage!;
        this.router.navigate(['/']).then();
      }
    });
  }

  initSupportLoginMethods(): void {
    this.loginMethods = [{
      name: 'Google',
      icon: 'google'
    }, {
      name: 'Microsoft',
      icon: 'microsoft'
    }, {
      name: 'Github',
      icon: 'github'
    }, {
      name: 'Facebook',
      icon: 'facebook'
    }];
  }

}
