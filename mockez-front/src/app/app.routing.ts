import { RouterModule, Routes } from '@angular/router';
import { AUTH, GENERAL, PROJECT, SCHEMA } from './app.constant';
import { PageNotFoundComponent } from '@shared/component/page-not-found/page-not-found.component';
import { AuthGuard } from '@app/auth.guard';
import { ProjectsComponent } from '@app/project/component/projects/projects.component';
import { ProjectComponent } from '@app/project/component/project/project.component';

const routes: Routes = [
  {
    path: AUTH,
    loadChildren: () => import('./auth/auth.module').then(m => m.AuthModule)
  }, {
    path: GENERAL,
    loadChildren: () => import('./general/general.module').then(m => m.GeneralModule)
  }, {
    path: SCHEMA, loadChildren: () => import('./schema/schema.module').then(m => m.SchemaModule),
    canActivate: [AuthGuard]
  }, {
    path: PROJECT, component: ProjectsComponent, pathMatch: 'full',
    canActivate: [AuthGuard]
  }, {
    path: PROJECT + '/:id', component: ProjectComponent, pathMatch: 'full',
    canActivate: [AuthGuard]
  },
  {
    path: '**',
    component: PageNotFoundComponent,
    pathMatch: 'full'
  }
];

export const ROUTING = RouterModule.forRoot(routes, { useHash: true });
