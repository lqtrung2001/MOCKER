import { NgModule } from '@angular/core';
import { SchemaLayoutComponent } from '@app/component/schema/schema-layout.component';
import { SchemasComponent } from '@app/component/schema/component/schemas/schemas.component';
import { SchemaComponent } from '@app/component/schema/component/schema/schema.component';
import { LayoutModule } from '@shared/layout/layout.module';
import { TranslateModule } from '@ngx-translate/core';
import { SharedModule } from '@shared/shared.module';
import { DatePipe, NgForOf, NgIf } from '@angular/common';
import { SchemaRoutingModule } from '@app/component/schema/schema-routing.module';
import { TableConfigModal } from '@app/component/schema/modal/table-config/table-config.modal';
import { ReactiveFormsModule } from '@angular/forms';
import { DiagramComponent } from '@app/component/schema/component/diagram/diagram.component';
import { DragDropModule } from '@angular/cdk/drag-drop';
import { RelationConfigModal } from '@app/component/schema/modal/relation-config/relation-config.modal';

/**
 * @author Do Quoc Viet
 */

@NgModule({
  declarations: [
    SchemasComponent,
    SchemaComponent,
    SchemaLayoutComponent,
    TableConfigModal,
    DiagramComponent,
    RelationConfigModal
  ],
  exports: [],
  imports: [
    SchemaRoutingModule,
    LayoutModule,
    TranslateModule,
    SharedModule,
    DatePipe,
    NgForOf,
    ReactiveFormsModule,
    DragDropModule,
    NgIf
  ],
  providers: []
})
export class SchemaModule {
}
