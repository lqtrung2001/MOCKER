import { RouterModule, Routes } from '@angular/router';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

const routes: Routes = [
  // {
  //   path: ROUTE.AUTH, children: [
  //     { path: '', redirectTo: 'sign-in', pathMatch: 'full' },
  //     { path: 'sign-in', component: LoginComponent, resolve: [] },
  //     { path: 'forgot-password', component: ForgotPasswordComponent, resolve: [] },
  //     { path: 'sign-up', component: SignupComponent, resolve: [] }
  //   ]
  // }
];

export const ROUTING = RouterModule.forChild(routes);
