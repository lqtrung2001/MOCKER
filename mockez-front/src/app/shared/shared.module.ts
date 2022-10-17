import { NgModule } from '@angular/core';
import { ConfigurationComponent } from '@shared/component/configuration/configuration.component';
import { TableComponent } from '@shared/component/table/table.component';
import { TranslateModule } from '@ngx-translate/core';
import { KeyValuePipe, NgForOf, NgIf, TitleCasePipe, UpperCasePipe } from '@angular/common';
import { ReactiveFormsModule } from '@angular/forms';
import { TruncatePipe } from '@core/pipe/truncate';
import { SelectTypeComponent } from '@shared/component/select-type/select-type.component';
import { PreviewComponent } from '@shared/component/preview/preview.component';
import { FormatPipe } from '@core/pipe/format.pipe';

@NgModule({
  declarations: [
    ConfigurationComponent,
    TableComponent,
    TruncatePipe,
    SelectTypeComponent,
    PreviewComponent,
    FormatPipe
  ],
  imports: [
    KeyValuePipe,
    UpperCasePipe,
    TitleCasePipe,
    TranslateModule,
    NgIf,
    NgForOf,
    ReactiveFormsModule
  ],
  exports: [
    TableComponent,
    TruncatePipe,
    ConfigurationComponent,
    PreviewComponent
  ],
  providers: []
})
export class SharedModule {
}
