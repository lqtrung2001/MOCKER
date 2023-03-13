import { RouterModule, Routes } from '@angular/router';
import { ProjectsComponent } from '@app/component/project/component/projects/projects.component';
import { ProjectComponent } from '@app/component/project/component/project/project.component';
import { ProjectLayoutComponent } from '@app/component/project/project-layout.component';
import { AuthGuard } from '@app/auth.guard';
import { NgModule } from '@angular/core';

/**
 * @author Do Quoc Viet
 */

const routes: Routes = [
  {
    path: '', component: ProjectLayoutComponent, children: [
      { path: '', component: ProjectsComponent },
      { path: 'new', component: ProjectComponent },
      { path: ':id', component: ProjectComponent }
    ], canActivate: [AuthGuard]
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class ProjectRoutingModule {
}
