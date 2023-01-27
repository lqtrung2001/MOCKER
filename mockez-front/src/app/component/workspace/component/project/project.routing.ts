import { RouterModule, Routes } from '@angular/router';
import { ProjectsComponent } from '@app/component/workspace/component/project/component/projects/projects.component';
import { ProjectComponent } from '@app/component/workspace/component/project/component/project/project.component';

/**
 * @author Do Quoc Viet
 */

const routes: Routes = [
  {
    path: 'project', component: ProjectsComponent, children: [
      { path: ':id', component: ProjectComponent }
    ]
  }
];

export const ROUTING = RouterModule.forChild(routes);
