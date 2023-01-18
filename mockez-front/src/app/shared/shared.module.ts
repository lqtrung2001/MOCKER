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
import { PageNotFoundComponent } from '@shared/component/page-not-found/page-not-found.component';
import { RouterLinkWithHref } from '@angular/router';
import { FieldComponent } from '@shared/component/field/field.component';
import { FormErrorProcessorComponent } from '@shared/component/form-error-proccesser/form-error-processor.component';
import { LoadingComponent } from '@shared/component/loading/loading.component';
import { ButtonComponent } from '@shared/component/button/button.component';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@NgModule({
  declarations: [
    PageNotFoundComponent,
    FieldComponent,
    ButtonComponent,
    FormErrorProcessorComponent,
    LoadingComponent
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
    PageNotFoundComponent,
    FieldComponent,
    FieldComponent,
    LoadingComponent,
    ButtonComponent
  ],
  providers: []
})
export class SharedModule {
}
