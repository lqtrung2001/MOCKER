import { NgModule } from '@angular/core';
import { SignInComponent } from '@app/component/auth/component/sign-in/sign-in.component';
import { ROUTING } from '@app/component/auth/auth.routing';
import { ReactiveFormsModule } from '@angular/forms';
import { NgForOf, NgIf } from '@angular/common';
import { SharedModule } from '@shared/shared.module';
import { TranslateModule } from '@ngx-translate/core';
import { SignUpComponent } from '@app/component/auth/component/sign-up/sign-up.component';
import { VerificationModal } from '@app/component/auth/modal/verification/verification.modal';
import { ForgetPasswordComponent } from '@app/component/auth/component/forget-password/forget-password.component';
import { ChangePasswordModal } from '@app/component/auth/modal/change-password/change-password.modal';

/**
 * @author Do Quoc Viet
 */

@NgModule({
  declarations: [
    SignInComponent,
    SignUpComponent,
    VerificationModal,
    ForgetPasswordComponent,
    ChangePasswordModal
  ],
  exports: [],
  imports: [
    ROUTING,
    ReactiveFormsModule,
    NgIf,
    NgForOf,
    SharedModule,
    TranslateModule
  ],
  providers: []
})
export class AuthModule {
}
