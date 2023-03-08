import { NgModule } from '@angular/core';
import { ProjectsComponent } from '@app/component/project/component/projects/projects.component';
import { ProjectComponent } from '@app/component/project/component/project/project.component';
import { ProjectLayoutComponent } from '@app/component/project/project-layout.component';
import { LayoutModule } from '@shared/layout/layout.module';
import { TranslateModule } from '@ngx-translate/core';
import { SharedModule } from '@shared/shared.module';
import { DatePipe, NgForOf, NgIf, NgTemplateOutlet } from '@angular/common';
import { ProjectRoutingModule } from '@app/component/project/project-routing.module';

/**
 * @author Do Quoc Viet
 * @date 05/02/2023
 */

@NgModule({
  declarations: [
    ProjectsComponent,
    ProjectComponent,
    ProjectLayoutComponent
  ],
  exports: [],
  imports: [
    ProjectRoutingModule,
    LayoutModule,
    TranslateModule,
    SharedModule,
    NgForOf,
    DatePipe,
    NgIf,
    NgTemplateOutlet
  ],
  providers: []
})
export class ProjectModule {
}
