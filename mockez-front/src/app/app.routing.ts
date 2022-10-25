import { RouterModule, Routes } from '@angular/router';
import { GENERAL, LOGIN, PROJECT, SCHEMA } from './app.constant';

const routes: Routes = [
  { path: '', redirectTo: LOGIN, pathMatch: 'full' },
  { path: GENERAL, loadChildren: () => import('./general/general.module').then(m => m.GeneralModule) },
  { path: SCHEMA, loadChildren: () => import('./schema/schema.module').then(m => m.SchemaModule) },
  { path: PROJECT, loadChildren: () => import('./project/project.module').then(m => m.ProjectModule) },
  { path: LOGIN, loadChildren: () => import('./login/login.module').then(m => m.LoginModule) }
];

export const ROUTING = RouterModule.forRoot(routes, { useHash: true });
