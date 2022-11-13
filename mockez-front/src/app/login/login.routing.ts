import { RouterModule, Routes } from '@angular/router';
import { LoginComponent } from '@app/login/component/login/login.component';
import { SignupComponent } from '@app/login/component/signup/signup.component';
import { ForgotPasswordComponent } from './component/forgot-password/forgot-password.component';

const routes: Routes = [
  { path: '', component: LoginComponent, resolve: [] },
  { path: 'signup', component: SignupComponent, resolve: [] },
  { path: 'forgot-password', component: ForgotPasswordComponent, resolve: [] }
];

export const ROUTING = RouterModule.forChild(routes);
