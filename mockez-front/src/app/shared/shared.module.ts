import { NgModule } from '@angular/core';
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
import { FormatPipe } from '@core/pipe/format.pipe';
import { PageNotFoundComponent } from '@shared/component/page-not-found/page-not-found.component';
import { RouterLinkWithHref } from '@angular/router';
import { DateDurationPipe } from '@core/pipe/date-duration.pipe';
import { XmlPipe } from '@core/pipe/xml.pipe';
import { SqlPipe } from '@core/pipe/sql.pipe';
import { CsvPipe } from '@core/pipe/csv.pipe';
import { SafeHtmlPipe } from '@core/pipe/safe-html.pipe';
import { FieldComponent } from '@shared/component/field/field.component';
import { FormErrorProcessorComponent } from '@shared/component/form-error-proccesser/form-error-processor.component';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@NgModule({
  declarations: [
    TruncatePipe,
    FormatPipe,
    XmlPipe,
    SqlPipe,
    CsvPipe,
    DateDurationPipe,
    PageNotFoundComponent,
    SafeHtmlPipe,
    FieldComponent,
    FormErrorProcessorComponent
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
    JsonPipe,
    NgSwitch,
    NgSwitchCase
  ],
  exports: [
    TruncatePipe,
    PageNotFoundComponent,
    DateDurationPipe,
    SafeHtmlPipe,
    FieldComponent,
    FieldComponent
  ],
  providers: []
})
export class SharedModule {
}
