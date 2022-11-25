import { RouterModule, Routes } from '@angular/router';
import { LoginComponent } from '@app/auth/component/login/login.component';
import { SignupComponent } from '@app/auth/component/signup/signup.component';
import { ForgotPasswordComponent } from './component/forgot-password/forgot-password.component';

const routes: Routes = [
  {
    path: 'auth', children: [
      { path: '', redirectTo: 'login', pathMatch: 'full' },
      { path: 'login', component: LoginComponent, resolve: [] },
      { path: 'forgot-password', component: ForgotPasswordComponent, resolve: [] },
      { path: 'signup', component: SignupComponent, resolve: [] }
    ]
  }
];

export const ROUTING = RouterModule.forChild(routes);
