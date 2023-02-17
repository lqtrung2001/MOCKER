import { RouterModule, Routes } from '@angular/router';
import { ProjectsComponent } from '@app/component/project/component/projects/projects.component';
import { ProjectComponent } from '@app/component/project/component/project/project.component';
import { ProjectLayoutComponent } from '@app/component/project/project-layout.component';
import { AuthGuard } from '@app/auth.guard';

/**
 * @author Do Quoc Viet
 * @date 05/02/2023
 */

const routes: Routes = [
  {
    path: 'project', component: ProjectLayoutComponent, children: [
      { path: '', component: ProjectsComponent },
      { path: 'new', component: ProjectComponent },
      { path: ':id', component: ProjectComponent }
    ], canActivate: [AuthGuard]
  }
];

export const ROUTING = RouterModule.forChild(routes);
