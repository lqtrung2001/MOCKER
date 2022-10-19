import { RouterModule, Routes } from '@angular/router';
import { GENERAL, PROJECT, SCHEMA } from './app.constant';

const routes: Routes = [
  { path: '', redirectTo: GENERAL, pathMatch: 'full' },
  { path: GENERAL, loadChildren: () => import('./general/general.module').then(m => m.GeneralModule) },
  { path: SCHEMA, loadChildren: () => import('./schema/schema.module').then(m => m.SchemaModule) },
  { path: PROJECT, loadChildren: () => import('./project/project.module').then(m => m.ProjectModule) }
];

export const ROUTING = RouterModule.forRoot(routes, { useHash: true });
