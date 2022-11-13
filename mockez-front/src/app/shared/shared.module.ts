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
import { CreateProjectModal } from '@shared/modal/create-project/create-project.modal';
import { CreateSchemaModal } from '@shared/modal/create-schema/create-schema.modal';
import { PageNotFoundComponent } from '@shared/component/page-not-found/page-not-found.component';
import { RouterLinkWithHref } from '@angular/router';

@NgModule({
  declarations: [
    ConfigurationComponent,
    TableComponent,
    TruncatePipe,
    SelectTypeModal,
    PreviewModal,
    CreateProjectModal,
    CreateSchemaModal,
    FormatPipe,
    PageNotFoundComponent
  ],
  imports: [
    KeyValuePipe,
    UpperCasePipe,
    TitleCasePipe,
    TranslateModule,
    NgIf,
    NgForOf,
    ReactiveFormsModule,
    RouterLinkWithHref
  ],
  exports: [
    TableComponent,
    TruncatePipe,
    ConfigurationComponent,
    CreateProjectModal,
    CreateSchemaModal,
    PreviewModal,
    PageNotFoundComponent
  ],
  providers: []
})
export class SharedModule {
}
