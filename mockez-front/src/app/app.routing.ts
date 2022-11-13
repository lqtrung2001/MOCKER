import { RouterModule, Routes } from '@angular/router';
import { GENERAL, LOGIN, PROJECT, SCHEMA } from './app.constant';
import { PageNotFoundComponent } from '@shared/component/page-not-found/page-not-found.component';

const routes: Routes = [
  { path: LOGIN, loadChildren: () => import('./login/login.module').then(m => m.LoginModule) },
  { path: GENERAL, loadChildren: () => import('./general/general.module').then(m => m.GeneralModule) },
  { path: SCHEMA, loadChildren: () => import('./schema/schema.module').then(m => m.SchemaModule) },
  { path: PROJECT, loadChildren: () => import('./project/project.module').then(m => m.ProjectModule) },
  { path: '**', component: PageNotFoundComponent }
];

export const ROUTING = RouterModule.forRoot(routes, { useHash: true });
