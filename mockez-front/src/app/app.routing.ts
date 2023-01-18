import { RouterModule, Routes } from '@angular/router';
import { SignInComponent } from '@app/component/auth/component/sign-in/sign-in.component';
import {
  ProjectComponent
} from '@app/component/feature/component/workspace/component/project/component/project/project.component';
import { AuthGuard } from '@app/auth.guard';
import { SignUpComponent } from '@app/component/auth/component/sign-up/sign-up.component';
import { ForgetPasswordComponent } from '@app/component/auth/component/forget-password/forget-password.component';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

const routes: Routes = [
  { path: 'auth/sign-in', component: SignInComponent },
  { path: 'auth/sign-up', component: SignUpComponent },
  { path: 'auth/forget-password', component: ForgetPasswordComponent },
  { path: '', redirectTo: 'workspace/project', pathMatch: 'full' },
  { path: 'workspace/project', component: ProjectComponent, canActivate: [AuthGuard] }
];

export const ROUTING = RouterModule.forRoot(routes, { useHash: true });
