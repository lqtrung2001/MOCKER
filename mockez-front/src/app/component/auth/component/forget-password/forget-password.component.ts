import { Component } from '@angular/core';
import { AbstractComponent } from '@core/class/abstract-component';
import { FormBuilder, FormControl, Validators } from '@angular/forms';
import { AuthService } from '@app/core/service/auth.service';
import { VerificationModal, VerificationModalOptions } from '@app/component/auth/modal/verification/verification.modal';
import { ModalService } from '@shared/modal/modal-service/modal-service.service';
import { Router } from '@angular/router';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Component({
  selector: 'moc-forget-password',
  templateUrl: 'forget-password.component.html',
  styleUrls: ['forget-password.component.scss']
})
export class ForgetPasswordComponent extends AbstractComponent {
  username: FormControl;
  isNotExistedUsername: boolean = false;

  constructor(
    private formBuilder: FormBuilder,
    private authService: AuthService,
    private modalService: ModalService,
    private router: Router
  ) {
    super();
    localStorage.clear();
    this.username = formBuilder.control(undefined, [Validators.required, Validators.email]);
    this.username.valueChanges.subscribe(() => {
      this.isNotExistedUsername = false;
    });
  }

  submit(): void {
    this.username.markAsTouched();
    if (this.username.invalid) {
      return;
    }
    this.authService.isExistedUsername(this.username.value).subscribe((isExisted: boolean) => {
      if (!isExisted) {
        this.isNotExistedUsername = true;
        return;
      }
      this.authService.sendVerificationCode(this.username.value).subscribe((success: boolean) => {
        if (success) {
          const validateOTPModalOptions: VerificationModalOptions = {
            username: this.username.value
          };
          this.modalService.open(VerificationModal, validateOTPModalOptions).onResult()
            .subscribe((success: boolean) => {
              if (success) {
                this.router.navigate(['/']).then();
              }
            });
        }
      });
    });
  }
}
