import { NgModule } from '@angular/core';
import { SchemaComponent } from './component/schema/schema.component';
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
    SchemaComponent
  ],
  exports: [
    SchemaComponent
  ],
  providers: []
})
export class SchemaModule {
}
