import { RouterModule, Routes } from '@angular/router';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

const routes: Routes = [
  // {
  //   path: ROUTE.AUTH, children: [
  //     { path: '', redirectTo: 'login', pathMatch: 'full' },
  //     { path: 'login', component: LoginComponent, resolve: [] },
  //     { path: 'forgot-password', component: ForgotPasswordComponent, resolve: [] },
  //     { path: 'signup', component: SignupComponent, resolve: [] }
  //   ]
  // }
];

export const ROUTING = RouterModule.forChild(routes);
