import { NgModule } from '@angular/core';
import { ConfigurationComponent } from '@shared/component/configuration/configuration.component';
import { TableComponent } from '@shared/component/table/table.component';
import { TranslateModule } from '@ngx-translate/core';
import { KeyValuePipe, NgForOf, NgIf, TitleCasePipe, UpperCasePipe } from '@angular/common';
import { ReactiveFormsModule } from '@angular/forms';
import { TruncatePipe } from '@core/pipe/truncate.pipe';
import { SelectTypeModal } from '@shared/modal/select-type/select-type.modal';
import { PreviewModal } from '@shared/modal/preview/preview.modal';
import { FormatPipe } from '@core/pipe/format.pipe';

@NgModule({
  declarations: [
    ConfigurationComponent,
    TableComponent,
    TruncatePipe,
    SelectTypeModal,
    PreviewModal,
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
    PreviewModal
  ],
  providers: []
})
export class SharedModule {
}
