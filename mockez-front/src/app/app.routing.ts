import { RouterModule, Routes } from '@angular/router';
import { NAVIGATION } from './app.constant';

const routes: Routes = [
  { path: '', redirectTo: '', pathMatch: 'full' },
  { path: NAVIGATION, loadChildren: () => import('./core/layout/navigation/navigation.module').then(m => m.NavigationModule) }
];

export const ROUTING = RouterModule.forRoot(routes, { useHash: true });
