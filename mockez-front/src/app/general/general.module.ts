import { NgModule } from '@angular/core';
import { GeneralComponent } from './component/general/general.component';
import { ROUTING } from './general.routing';
import { ReactiveFormsModule } from '@angular/forms';
import { CommonModule } from '@angular/common';
import { TranslateModule } from '@ngx-translate/core';
import { ProjectComponent } from './component/project/project.component';
import { SharedModule } from '@shared/shared.module';
import { FormatPipe } from '@core/pipe/format.pipe';

@NgModule({
  imports: [
    ROUTING,
    CommonModule,
    ReactiveFormsModule,
    TranslateModule,
    SharedModule
  ],
  declarations: [
    GeneralComponent,
    ProjectComponent
  ],
  exports: [
    GeneralComponent,
    ProjectComponent
  ],
  providers: []
})
export class GeneralModule {
}
