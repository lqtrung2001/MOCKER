import { RouterModule, Routes } from '@angular/router';
import { NgModule } from '@angular/core';

/**
 * @author Do Quoc Viet
 */

const routes: Routes = [
  {
    path: '',
    loadChildren: () => import('./component/general/general.module').then(module => module.GeneralModule)
  }, {
    path: 'auth',
    loadChildren: () => import('./component/auth/auth.module').then(module => module.AuthModule)
  }, {
    path: 'schema',
    loadChildren: () => import('./component/schema/schema.module').then(module => module.SchemaModule)
  }, {
    path: 'project',
    loadChildren: () => import('./component/project/project.module').then(module => module.ProjectModule)
  }, {
    path: 'people',
    loadChildren: () => import('./component/people/people.module').then(module => module.PeopleModule)
  }, {
    path: 'group',
    loadChildren: () => import('./component/group/group.module').then(module => module.GroupModule)
  }, {
    path: 'not-found',
    loadChildren: () => import('./component/not-found/not-found.module').then(module => module.NotFoundModule)
  }, {
    path: '**',
    redirectTo: 'not-found'
  }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule {
}
