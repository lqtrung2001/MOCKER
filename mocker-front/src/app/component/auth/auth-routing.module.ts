import { RouterModule, Routes } from '@angular/router';
import { SignInComponent } from '@app/component/auth/component/sign-in/sign-in.component';
import { ForgetPasswordComponent } from '@app/component/auth/component/forget-password/forget-password.component';
import { SignUpComponent } from '@app/component/auth/component/sign-up/sign-up.component';
import { NgModule } from '@angular/core';

/**
 * @author Do Quoc Viet
 */

const routes: Routes = [
  { path: '', redirectTo: 'auth/sign-in', pathMatch: 'full' },
  {
    path: '', children: [
      { path: 'sign-in', component: SignInComponent },
      { path: 'forget-password', component: ForgetPasswordComponent },
      { path: 'sign-up', component: SignUpComponent }]
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class AuthRoutingModule {
}
