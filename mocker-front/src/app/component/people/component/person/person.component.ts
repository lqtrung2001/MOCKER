import { AbstractComponent } from '@core/class/abstract.component';
import { Component, Injector } from '@angular/core';
import { User } from '@core/model/user';
import { UserService } from '@core/service/user.service';
import { FormControl, FormGroup, Validators } from '@angular/forms';
import {
  ChangePasswordModal,
  ChangePasswordModalOptions
} from '@app/component/auth/modal/change-password/change-password.modal';
import { VerificationModal, VerificationModalOptions } from '@app/component/auth/modal/verification/verification.modal';
import { LocalStorageConstant } from '@core/constant/local-storage.constant';
import { AuthService } from '@core/service/auth.service';

/**
 * @author Do Quoc Viet
 */

type Controls = {
  username: FormControl,
  apiKey: FormControl
}

@Component({
  selector: 'moc-person',
  templateUrl: 'person.component.html',
  styleUrls: ['person.component.scss']
})
export class PersonComponent extends AbstractComponent {
  user: User;
  formGroup: FormGroup<Controls>;
  isExistedUsername: boolean = false;

  constructor(
    injector: Injector,
    private userService: UserService,
    private authService: AuthService
  ) {
    super(injector);
    this.formGroup = this.formBuilder.group({
      username: this.formBuilder.control(undefined, [Validators.required, Validators.email]),
      apiKey: this.formBuilder.control(undefined, [])
    });
    const id: string = this.activatedRoute.snapshot.paramMap.get('id')!;
    this.userService.getUser(id).subscribe((user: User) => {
      this.user = user;
      this.formGroup.patchValue(user);
    });
  }

  changeUsername(): void {
    const control: FormControl = this.formGroup.controls.username;
    if (control.valid && control.value !== this.user.username) {
      this.authService.isExistedUsername(control.value).subscribe((existed: boolean) => {
        if (existed) {
          this.isExistedUsername = true;
          return;
        }
        this.authService.sendVerificationCode(control.value).subscribe((success: boolean) => {
          if (success) {
            // const validateOTPModalOptions: VerificationModalOptions = {
            //   username,
            //   password
            // };
            // this.modalService.open(VerificationModal, validateOTPModalOptions).onResult().subscribe((user: User) => {
            //   if (user) {
            //     // For set token
            //     localStorage.setItem(LocalStorageConstant.AUTH, JSON.stringify(user));
            //     this.authService.signIn(username, password).subscribe(() => {
            //       this.router.navigate(['/']).then();
            //     });
            //   }
            // });
          }
        });
      });
    }
  }

  changePassword(): void {
    const options: ChangePasswordModalOptions = {
      id: this.user.id
    };
    this.modalService.open(ChangePasswordModal, options);
  }

}
