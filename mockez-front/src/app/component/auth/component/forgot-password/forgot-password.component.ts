import { Component } from '@angular/core';
import { FormBuilder, FormControl, Validators } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import { HttpClient } from '@angular/common/http';
import { SignupModal, SignupModalOptions } from '@app/component/auth/modal/sigup/sigup.modal';
import { AuthService } from '@core/service/auth.service';
import { ModalService } from '@shared/modal/modal-service/modal-service.service';
import { ModalProvider } from '@shared/modal/modal-provider/modal-provider.modal';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Component({
  selector: 'app-forgot-password',
  templateUrl: 'forgot-password.component.html',
  styleUrls: ['forgot-password.component.scss']
})
export class ForgotPasswordComponent {

  username: FormControl;

  constructor(
    private formBuilder: FormBuilder,
    private activatedRoute: ActivatedRoute,
    private router: Router,
    private httpClient: HttpClient,
    private authService: AuthService,
    private modalService: ModalService,
    private modalProvider: ModalProvider
  ) {
    this.username = formBuilder.control('', Validators.required);
    // clear local storage
    localStorage.clear();
  }

  sendOTP(): void {
    if (this.username.invalid) {
      this.modalProvider.showError({
        body: 'Username is required.'
      }).subscribe(() => {
        return;
      });
    } else {
      this.authService.sentOTPCode(this.username.value).subscribe((res: boolean) => {
        if (!res) {
          return;
        }
        const options: SignupModalOptions = { username: this.username.value };
        this.modalService.open(SignupModal, options)
          .onResult().subscribe((close: boolean) => {
          if (close) {
            this.router.navigate(['/auth/login']).then();
          }
        });
      });
    }
  }

}
