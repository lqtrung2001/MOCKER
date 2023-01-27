import { NgModule } from '@angular/core';
import { ProjectModule } from '@app/component/workspace/component/project/project.module';
import { ROUTING } from '@app/component/workspace/workspace.routing';
import { WorkspaceLayoutComponent } from '@app/component/workspace/workspace-layout.component';
import { LayoutModule } from '@shared/layout/layout.module';

/**
 * @author Do Quoc Viet
 */

@NgModule({
  declarations: [
    WorkspaceLayoutComponent
  ],
  exports: [],
  imports: [
    ProjectModule,
    ROUTING,
    LayoutModule
  ],
  providers: []
})
export class WorkspaceModule {
}
