import { NgModule } from '@angular/core';
import { SchemaLayoutComponent } from '@app/component/schema/schema-layout.component';
import { SchemasComponent } from '@app/component/schema/component/schemas/schemas.component';
import { SchemaComponent } from '@app/component/schema/component/schema/schema.component';
import { LayoutModule } from '@shared/layout/layout.module';
import { TranslateModule } from '@ngx-translate/core';
import { SharedModule } from '@shared/shared.module';
import { DatePipe, NgForOf } from '@angular/common';
import { SchemaRoutingModule } from '@app/component/schema/schema-routing.module';
import { TableConfigModal } from '@app/component/schema/modal/table-config/table-config.modal';

/**
 * @author Do Quoc Viet
 * @date 22/02/2023
 */

@NgModule({
  declarations: [
    SchemasComponent,
    SchemaComponent,
    SchemaLayoutComponent,
    TableConfigModal
  ],
  exports: [],
  imports: [
    SchemaRoutingModule,
    LayoutModule,
    TranslateModule,
    SharedModule,
    DatePipe,
    NgForOf
  ],
  providers: []
})
export class SchemaModule {
}
