import { NgModule } from '@angular/core';
import { ConfigurationComponent } from '@shared/component/configuration/configuration.component';
import { TranslateModule } from '@ngx-translate/core';
import {
  JsonPipe,
  KeyValuePipe,
  NgForOf,
  NgIf,
  NgSwitch,
  NgSwitchCase,
  TitleCasePipe,
  UpperCasePipe
} from '@angular/common';
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
import { XmlPipe } from '@core/pipe/xml.pipe';
import { SqlPipe } from '@core/pipe/sql.pipe';
import { CsvPipe } from '@core/pipe/csv.pipe';
import { SafeHtmlPipe } from '@core/pipe/safe-html.pipe';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@NgModule({
  declarations: [
    ConfigurationComponent,
    TruncatePipe,
    SelectTypeModal,
    PreviewModal,
    CreateSchemaModal,
    FormatPipe,
    XmlPipe,
    SqlPipe,
    CsvPipe,
    DateDurationPipe,
    PageNotFoundComponent,
    SelectGroupModal,
    SafeHtmlPipe
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
    ToastModule,
    JsonPipe,
    NgSwitch,
    NgSwitchCase
  ],
  exports: [
    TruncatePipe,
    ConfigurationComponent,
    CreateSchemaModal,
    PreviewModal,
    PageNotFoundComponent,
    SelectGroupModal,
    DateDurationPipe,
    SafeHtmlPipe
  ],
  providers: []
})
export class SharedModule {
}
