import { NgModule } from '@angular/core';
import { ProjectComponent } from './component/project/project.component';
import { ROUTING } from './project.routing';
import { ReactiveFormsModule } from '@angular/forms';
import { CommonModule } from '@angular/common';
import { TranslateModule } from '@ngx-translate/core';
import { SharedModule } from '@shared/shared.module';

@NgModule({
  imports: [
    ROUTING,
    CommonModule,
    ReactiveFormsModule,
    TranslateModule,
    SharedModule
  ],
  declarations: [
    ProjectComponent
  ],
  exports: [
    ProjectComponent
  ],
  providers: []
})
export class ProjectModule {
}
