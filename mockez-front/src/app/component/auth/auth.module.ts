import { NgModule } from '@angular/core';
import { LoginComponent } from '@app/component/auth/component/login/login.component';
import { ROUTING } from '@app/component/auth/auth.routing';
import { ReactiveFormsModule } from '@angular/forms';
import { SignupComponent } from '@app/component/auth/component/signup/signup.component';
import { ForgotPasswordComponent } from '@app/component/auth/component/forgot-password/forgot-password.component';
import { NgForOf, NgIf } from '@angular/common';
import { SignupModal } from '@app/component/auth/modal/sigup/sigup.modal';
import { SharedModule } from '@shared/shared.module';
import { TranslateModule } from '@ngx-translate/core';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@NgModule({
  declarations: [
    LoginComponent,
    SignupComponent,
    ForgotPasswordComponent,
    SignupModal

  ],
  imports: [
    ROUTING,
    ReactiveFormsModule,
    NgIf,
    NgForOf,
    SharedModule,
    TranslateModule
  ],
  providers: [],
  exports: [
    LoginComponent
  ]
})
export class AuthModule {
}
