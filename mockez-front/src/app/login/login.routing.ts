import { RouterModule, Routes } from '@angular/router';
import { LoginComponent } from '@app/login/component/login/login.component';

const routes: Routes = [
  { path: '', component: LoginComponent, resolve: [] }
];

export const ROUTING = RouterModule.forChild(routes);
