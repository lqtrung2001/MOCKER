import { NgModule } from '@angular/core';
import { ConfigurationComponent } from '@shared/component/configuration/configuration.component';
import { TranslateModule } from '@ngx-translate/core';
import { KeyValuePipe, NgForOf, NgIf, TitleCasePipe, UpperCasePipe } from '@angular/common';
import { ReactiveFormsModule } from '@angular/forms';
import { TruncatePipe } from '@core/pipe/truncate.pipe';
import { SelectTypeModal } from '@shared/modal/select-type/select-type.modal';
import { PreviewModal } from '@shared/modal/preview/preview.modal';
import { FormatPipe } from '@core/pipe/format.pipe';
import { CreateSchemaModal } from '@shared/modal/create-schema/create-schema.modal';
import { PageNotFoundComponent } from '@shared/component/page-not-found/page-not-found.component';
import { RouterLinkWithHref } from '@angular/router';
import { SelectGroupModal } from '@shared/modal/select-group/select-group.modal';
import { DateDurationPipe } from '@core/pipe/date-duration.pipe';
import { ToastModule } from '@shared/modal/toast-service';

@NgModule({
  declarations: [
    ConfigurationComponent,
    TruncatePipe,
    SelectTypeModal,
    PreviewModal,
    CreateSchemaModal,
    FormatPipe,
    DateDurationPipe,
    PageNotFoundComponent,
    SelectGroupModal
  ],
  imports: [
    KeyValuePipe,
    UpperCasePipe,
    TitleCasePipe,
    TranslateModule,
    NgIf,
    NgForOf,
    ReactiveFormsModule,
    RouterLinkWithHref,
    ToastModule
  ],
  exports: [
    TruncatePipe,
    ConfigurationComponent,
    CreateSchemaModal,
    PreviewModal,
    PageNotFoundComponent,
    SelectGroupModal,
    DateDurationPipe
  ],
  providers: []
})
export class SharedModule {
}
