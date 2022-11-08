import { NgModule } from '@angular/core';
import { LoginComponent } from '@app/login/component/login/login.component';
import { ROUTING } from '@app/login/login.routing';
import { ReactiveFormsModule } from '@angular/forms';
import { SignupComponent } from '@app/login/component/signup/signup.component';
import { ForgotPasswordComponent } from '@app/login/component/forgot-password/forgot-password.component';
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
export class LoginModule {
}
