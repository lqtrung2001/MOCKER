import { NgModule } from '@angular/core';
import { SchemasComponent } from './component/schemas/schemas.component';
import { ROUTING } from './schema.routing';
import { ReactiveFormsModule } from '@angular/forms';
import { CommonModule } from '@angular/common';
import { TranslateModule } from '@ngx-translate/core';
import { SharedModule } from '@shared/shared.module';

@NgModule({
  imports: [
    ROUTING,
    CommonModule,
    ReactiveFormsModule,
    TranslateModule,
    SharedModule
  ],
  declarations: [
    SchemasComponent
  ],
  exports: [
    SchemasComponent
  ],
  providers: []
})
export class SchemaModule {
}
