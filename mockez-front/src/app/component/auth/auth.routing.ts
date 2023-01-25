import { RouterModule, Routes } from '@angular/router';
import { SignInComponent } from '@app/component/auth/component/sign-in/sign-in.component';
import { ForgetPasswordComponent } from '@app/component/auth/component/forget-password/forget-password.component';
import { SignUpComponent } from '@app/component/auth/component/sign-up/sign-up.component';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

const routes: Routes = [
  { path: 'auth', redirectTo: 'auth/sign-in' },
  {
    path: 'auth', children: [
      { path: 'sign-in', component: SignInComponent },
      { path: 'forget-password', component: ForgetPasswordComponent },
      { path: 'sign-up', component: SignUpComponent }]
  }
];

export const ROUTING = RouterModule.forChild(routes);
