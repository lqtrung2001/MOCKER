import { PreloadAllModules, RouterModule, Routes } from '@angular/router';
import {
  ProjectComponent
} from '@app/component/feature/component/workspace/component/project/component/project/project.component';
import { AuthGuard } from '@app/auth.guard';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

const routes: Routes = [
  { path: '', redirectTo: 'workspace/project', pathMatch: 'full' },
  { path: 'auth', loadChildren: () => import('./component/auth/auth.module').then(m => m.AuthModule) },
  { path: 'workspace/project', component: ProjectComponent, canActivate: [AuthGuard] },
  {
    path: 'not-found',
    loadChildren: () => import('./component/not-found/not-found.module').then(m => m.NotFoundModule)
  },
  { path: '**', redirectTo: 'not-found' }
];

export const ROUTING = RouterModule.forRoot(routes, { useHash: true, preloadingStrategy: PreloadAllModules });
