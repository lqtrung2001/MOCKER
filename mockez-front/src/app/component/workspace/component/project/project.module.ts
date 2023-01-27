import { NgModule } from '@angular/core';
import { ProjectComponent } from '@app/component/workspace/component/project/component/project/project.component';
import { ProjectsComponent } from '@app/component/workspace/component/project/component/projects/projects.component';
import { ROUTING } from '@app/component/workspace/component/project/project.routing';

/**
 * @author Do Quoc Viet
 */

@NgModule({
  declarations: [
    ProjectsComponent,
    ProjectComponent
  ],
  exports: [],
  imports: [
    ROUTING
  ],
  providers: []
})
export class ProjectModule {
}
