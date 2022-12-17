import { NgModule } from '@angular/core';
import { SchemasComponent } from './component/schemas/schemas.component';
import { ROUTING } from './schema.routing';
import { ReactiveFormsModule } from '@angular/forms';
import { CommonModule } from '@angular/common';
import { TranslateModule } from '@ngx-translate/core';
import { SharedModule } from '@shared/shared.module';
import { SaveSchemaModal } from '@app/component/schema/modal/save-schema/save-schema-modal';
import { DeleteSchemaModal } from '@app/component/schema/modal/delete-schema-modal/delete-schema.modal';

@NgModule({
  imports: [
    ROUTING,
    CommonModule,
    ReactiveFormsModule,
    TranslateModule,
    SharedModule
  ],
  declarations: [
    SchemasComponent,
    SaveSchemaModal,
    DeleteSchemaModal
  ],
  exports: [
    SchemasComponent
  ],
  providers: []
})
export class SchemaModule {
}
