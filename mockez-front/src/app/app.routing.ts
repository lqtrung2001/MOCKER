import { NoPreloading, RouterModule, Routes } from '@angular/router';

/**
 * @author Do Quoc Viet
 * @date 05/02/2023
 */

const routes: Routes = [
  {
    path: '',
    loadChildren: () => import('./component/general/general.module').then(module => module.GeneralModule)
  }, {
    path: 'auth',
    loadChildren: () => import('./component/auth/auth.module').then(module => module.AuthModule)
  }, {
    path: 'project',
    loadChildren: () => import('./component/project/project.module').then(module => module.ProjectModule)
  }, {
    path: 'not-found',
    loadChildren: () => import('./component/not-found/not-found.module').then(module => module.NotFoundModule)
  }, {
    path: '**',
    redirectTo: 'not-found'
  }
];

export const ROUTING = RouterModule.forRoot(routes, { useHash: true, preloadingStrategy: NoPreloading });
