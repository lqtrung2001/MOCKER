import { NoPreloading, RouterModule, Routes } from '@angular/router';

/**
 * @author Do Quoc Viet
 */

const routes: Routes = [
  {
    path: '',
    redirectTo: 'workspace/project', pathMatch: 'full'
  }, {
    path: 'auth',
    loadChildren: () => import('./component/auth/auth.module').then(module => module.AuthModule)
  }, {
    path: 'general',
    loadChildren: () => import('./component/general/general.module').then(module => module.GeneralModule)
  }, {
    path: 'workspace',
    loadChildren: () => import('./component/workspace/workspace.module').then(module => module.WorkspaceModule)
  }, {
    path: 'group',
    loadChildren: () => import('./component/group/group.module').then(module => module.GroupModule)
  }, {
    path: 'people',
    loadChildren: () => import('./component/people/people.module').then(module => module.PeopleModule)
  }, {
    path: 'not-found',
    loadChildren: () => import('./component/not-found/not-found.module').then(module => module.NotFoundModule)
  }, {
    path: '**',
    redirectTo: 'not-found'
  }
];

export const ROUTING = RouterModule.forRoot(routes, { useHash: true, preloadingStrategy: NoPreloading });
