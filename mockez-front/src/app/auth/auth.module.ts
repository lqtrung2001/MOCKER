import { NgModule } from '@angular/core';
import { LoginComponent } from '@app/auth/component/login/login.component';
import { ROUTING } from '@app/auth/auth.routing';
import { ReactiveFormsModule } from '@angular/forms';
import { SignupComponent } from '@app/auth/component/signup/signup.component';
import { ForgotPasswordComponent } from '@app/auth/component/forgot-password/forgot-password.component';
import { NgIf } from '@angular/common';

@NgModule({
  declarations: [
    LoginComponent,
    SignupComponent,
    ForgotPasswordComponent
  ],
  imports: [
    ROUTING,
    ReactiveFormsModule,
    NgIf
  ],
  providers: [],
  exports: []
})
export class AuthModule {
}
