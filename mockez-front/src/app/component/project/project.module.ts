import { NgModule } from '@angular/core';
import { ProjectsComponent } from './component/projects/projects.component';
import { ROUTING } from './project.routing';
import { ReactiveFormsModule } from '@angular/forms';
import { CommonModule } from '@angular/common';
import { TranslateModule } from '@ngx-translate/core';
import { SharedModule } from '@shared/shared.module';
import { ProjectComponent } from './component/project/project.component';
import { DeleteProjectModal } from '@app/component/project/modal/delete-project/delete-project.modal';
import { SaveProjectModal } from '@app/component/project/modal/save-project/save-project.modal';
import { MarkdownModule } from 'ngx-markdown';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@NgModule({
  imports: [
    ROUTING,
    CommonModule,
    ReactiveFormsModule,
    TranslateModule,
    SharedModule,
    MarkdownModule
  ],
  declarations: [
    ProjectsComponent,
    ProjectComponent,
    DeleteProjectModal,
    SaveProjectModal
  ],
  exports: [
    ProjectsComponent
  ],
  providers: []
})
export class ProjectModule {
}
