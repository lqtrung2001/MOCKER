import { NgModule } from '@angular/core';
import { SharedModule } from '@shared/shared.module';
import { TablePropertiesComponent } from '@app/component/table/component/table-properties/table-properties.component';
import { TranslateModule } from '@ngx-translate/core';
import { NgForOf, NgIf, TitleCasePipe, UpperCasePipe } from '@angular/common';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { TablesComponent } from '@app/component/table/component/tables/tables.component';
import { RouterLinkWithHref } from '@angular/router';
import { DeleteTableModal } from '@app/component/table/modal/delete-table/delete-table.modal';
import { TableOptionModal } from '@app/component/table/modal/table-option/table-option.modal';
import { SaveTableModal } from '@app/component/table/modal/save-table/save-table.modal';

@NgModule({
  imports: [
    SharedModule,
    TranslateModule,
    UpperCasePipe,
    TitleCasePipe,
    ReactiveFormsModule,
    NgIf,
    NgForOf,
    FormsModule,
    RouterLinkWithHref
  ],
  declarations: [
    TablesComponent,
    TablePropertiesComponent,
    DeleteTableModal,
    TableOptionModal,
    SaveTableModal
  ],
  exports: [],
  providers: []
})
export class TableModule {
}
