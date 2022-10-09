import { NgModule } from '@angular/core';
import { GeneralComponent } from './component/general/general.component';
import { ROUTING } from './general.routing';
import { SelectTypeComponent } from './component/select-type/select-type.component';
import { PreviewComponent } from './component/preview/preview.component';
import { FooterComponent } from './component/footer/footer.component';
import { ReactiveFormsModule } from '@angular/forms';
import { CommonModule } from '@angular/common';
import { FormatPipe } from '@core/pipe/format.pipe';
import { TranslateModule } from '@ngx-translate/core';

@NgModule({
  imports: [
    ROUTING,
    CommonModule,
    ReactiveFormsModule,
    TranslateModule
  ],
  declarations: [
    GeneralComponent,
    SelectTypeComponent,
    PreviewComponent,
    FooterComponent,
    FormatPipe
  ],
  exports: [
    GeneralComponent
  ],
  providers: []
})
export class GeneralModule {
}
