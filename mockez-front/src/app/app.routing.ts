import { RouterModule, Routes } from '@angular/router';
import { GENERAL } from './app.constant';

const routes: Routes = [
  { path: '', redirectTo: GENERAL, pathMatch: 'full' },
  { path: GENERAL, loadChildren: () => import('./general/general.module').then(m => m.GeneralModule) }
];

export const ROUTING = RouterModule.forRoot(routes, { useHash: true });
