import { NgModule } from '@angular/core';
import { SharedModule } from '@shared/shared.module';
import { TablePropertiesComponent } from '@app/component/table/component/table-properties/table-properties.component';
import { TranslateModule } from '@ngx-translate/core';
import { NgForOf, NgIf, TitleCasePipe, UpperCasePipe } from '@angular/common';
import { ReactiveFormsModule } from '@angular/forms';
import { TablesComponent } from '@app/component/table/component/tables/tables.component';

@NgModule({
  imports: [
    SharedModule,
    TranslateModule,
    UpperCasePipe,
    TitleCasePipe,
    ReactiveFormsModule,
    NgIf,
    NgForOf
  ],
  declarations: [
    TablesComponent,
    TablePropertiesComponent
  ],
  exports: [],
  providers: []
})
export class TableModule {
}
