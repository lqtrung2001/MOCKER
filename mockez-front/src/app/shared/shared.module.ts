import { NgModule } from '@angular/core';
import { TranslateModule } from '@ngx-translate/core';
import {
  JsonPipe,
  KeyValuePipe,
  NgForOf,
  NgIf,
  NgStyle,
  NgSwitch,
  NgSwitchCase,
  NgTemplateOutlet,
  TitleCasePipe,
  UpperCasePipe
} from '@angular/common';
import { ReactiveFormsModule } from '@angular/forms';
import { RouterLinkWithHref } from '@angular/router';
import { FieldComponent } from '@shared/component/field/field.component';
import {
  ErrorMessageProcessorComponent
} from '@shared/component/error-message-processor/error-message-processor.component';
import { LoadingComponent } from '@shared/component/loading/loading.component';
import { ButtonComponent } from '@shared/component/button/button.component';
import { ActionComponent } from '@shared/component/action/action.component';

/**
 * @author Do Quoc Viet
 */

@NgModule({
  declarations: [
    FieldComponent,
    ButtonComponent,
    ErrorMessageProcessorComponent,
    LoadingComponent,
    ActionComponent
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
    NgSwitchCase,
    NgTemplateOutlet,
    NgStyle
  ],
  exports: [
    FieldComponent,
    FieldComponent,
    LoadingComponent,
    ButtonComponent,
    ActionComponent
  ],
  providers: []
})
export class SharedModule {
}
