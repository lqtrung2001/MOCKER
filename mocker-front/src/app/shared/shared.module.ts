import { NgModule } from '@angular/core';
import { TranslateModule } from '@ngx-translate/core';
import {
  JsonPipe,
  KeyValuePipe,
  NgClass,
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
import { DescriptionComponent } from '@shared/component/description/description.component';
import { TruncatePipe } from '@shared/pipe/truncate.pipe';
import { TabComponent } from '@shared/component/tab/tab.component';
import { DateDistancePipe } from '@shared/pipe/date-distance.pipe';
import { TableDetailComponent } from '@shared/component/table-detail/table-detail.component';
import { CopyrightComponent } from '@shared/component/copyright/copyright.component';
import { ChangeLogComponent } from '@shared/component/change-log/change-log.component';
import { DialogDirective } from '@shared/directive/dialog.directive';
import { InstructionComponent } from '@shared/component/instruction/instruction.component';
import { TableComponent } from '@shared/component/table/table.component';

/**
 * @author Do Quoc Viet
 */

@NgModule({
  declarations: [
    FieldComponent,
    ButtonComponent,
    DescriptionComponent,
    ErrorMessageProcessorComponent,
    LoadingComponent,
    ActionComponent,
    TruncatePipe,
    TabComponent,
    DateDistancePipe,
    TableDetailComponent,
    CopyrightComponent,
    ChangeLogComponent,
    DialogDirective,
    InstructionComponent,
    TableComponent
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
    NgStyle,
    NgClass
  ],
  exports: [
    FieldComponent,
    FieldComponent,
    LoadingComponent,
    ButtonComponent,
    ActionComponent,
    DescriptionComponent,
    TruncatePipe,
    TabComponent,
    DateDistancePipe,
    TableDetailComponent,
    CopyrightComponent,
    ChangeLogComponent,
    DialogDirective,
    InstructionComponent,
    TableComponent
  ],
  providers: []
})
export class SharedModule {
}
