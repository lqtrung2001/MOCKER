import { NgModule } from '@angular/core';
import { ProjectsComponent } from './component/projects/projects.component';
import { ROUTING } from './project.routing';
import { ReactiveFormsModule } from '@angular/forms';
import { CommonModule } from '@angular/common';
import { TranslateModule } from '@ngx-translate/core';
import { SharedModule } from '@shared/shared.module';
import { ProjectComponent } from './component/project/project.component';

@NgModule({
  imports: [
    ROUTING,
    CommonModule,
    ReactiveFormsModule,
    TranslateModule,
    SharedModule
  ],
  declarations: [
    ProjectsComponent,
    ProjectComponent
  ],
  exports: [
    ProjectsComponent
  ],
  providers: []
})
export class ProjectModule {
}
