import { RouterModule, Routes } from '@angular/router';
import { WorkspaceLayoutComponent } from '@app/component/workspace/workspace-layout.component';
import { AuthGuard } from '@app/auth.guard';

/**
 * @author Do Quoc Viet
 */

const routes: Routes = [
  { path: 'workspace', redirectTo: 'workspace/project', pathMatch: 'full' },
  {
    path: 'workspace', component: WorkspaceLayoutComponent, canActivate: [AuthGuard],  children: [
      { path: 'project', loadChildren: () => import('./component/project/project.module').then(m => m.ProjectModule) }
    ]
  }
];

export const ROUTING = RouterModule.forChild(routes);
