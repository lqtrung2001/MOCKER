import { NgModule } from '@angular/core';
import { SchemaLayoutComponent } from '@app/component/schema/schema-layout.component';
import { SchemasComponent } from '@app/component/schema/component/schemas/schemas.component';
import { SchemaComponent } from '@app/component/schema/component/schema/schema.component';
import { ROUTING } from '@app/component/schema/schema.routing';
import { LayoutModule } from '@shared/layout/layout.module';
import { TranslateModule } from '@ngx-translate/core';
import { SharedModule } from '@shared/shared.module';
import { DatePipe, NgForOf } from '@angular/common';

/**
 * @author Do Quoc Viet
 * @date 22/02/2023
 */

@NgModule({
  declarations: [
    SchemaLayoutComponent,
    SchemasComponent,
    SchemaComponent
  ],
  imports: [
    ROUTING,
    LayoutModule,
    TranslateModule,
    SharedModule,
    DatePipe,
    NgForOf
  ],
  exports: [],
  providers: []
})
export class SchemaModule {
}
