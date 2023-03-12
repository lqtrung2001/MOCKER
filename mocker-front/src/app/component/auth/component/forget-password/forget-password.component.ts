import { Component, Injector } from '@angular/core';
import { AbstractComponent } from '@core/common/abstract.component';
import { FormControl, Validators } from '@angular/forms';
import { AuthService } from '@app/core/service/auth.service';
import { VerificationModal, VerificationModalOptions } from '@app/component/auth/modal/verification/verification.modal';
import { catchError, of } from 'rxjs';
import { HttpErrorResponse } from '@angular/common/http';

/**
 * @author Do Quoc Viet
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
    injector: Injector,
    private authService: AuthService
  ) {
    super(injector);
    localStorage.clear();
    this.username = this.formBuilder.control(undefined, [Validators.required, Validators.email]);
    this.username.valueChanges.subscribe(() => {
      this.isNotExistedUsername = false;
    });
  }

  submit(): void {
    this.username.markAsTouched();
    if (this.username.invalid) {
      return;
    }
    this.authService.isExistedUsername(this.username.value)
      .pipe(catchError((httpErrorResponse: HttpErrorResponse) => {
        console.log(httpErrorResponse);
        return of(false);
      })).subscribe((isExisted: boolean) => {
      if (!isExisted) {
        this.isNotExistedUsername = true;
        return;
      }
      this.authService.sendVerificationCode(this.username.value).subscribe((success: boolean) => {
        if (success) {
          const verificationModalOptions: VerificationModalOptions = {
            username: this.username.value
          };
          this.modalService.open(VerificationModal, verificationModalOptions)
            .subscribe((success: boolean) => {
              if (success) {
                this.router.navigate(['/']).then();
              }
            });
        }
      });
    }, (error) => {
      console.log(error);
    });
  }
}
