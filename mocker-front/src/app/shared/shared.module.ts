import { NgModule } from '@angular/core';
import { TranslateModule } from '@ngx-translate/core';
import {
  DatePipe,
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
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { RouterLink, RouterLinkWithHref } from '@angular/router';
import { InputComponent } from '@shared/component/input/input.component';
import {
  ErrorMessageProcessorComponent
} from '@shared/component/error-message-processor/error-message-processor.component';
import { LoadingComponent } from '@shared/component/loading/loading.component';
import { ButtonComponent } from '@shared/component/button/button.component';
import { DropdownComponent } from '@shared/component/dropdown/dropdown.component';
import { DescriptionComponent } from '@shared/component/description/description.component';
import { TruncatePipe } from '@shared/pipe/truncate.pipe';
import { Tab1Component } from '@shared/component/tab1/tab1.component';
import { DateDistancePipe } from '@shared/pipe/date-distance.pipe';
import { TableDetailComponent } from '@shared/component/table-detail/table-detail.component';
import { CopyrightComponent } from '@shared/component/copyright/copyright.component';
import { ChangeLogComponent } from '@shared/component/change-log/change-log.component';
import { PopupDirective } from '@shared/directive/popup.directive';
import { InstructionComponent } from '@shared/component/instruction/instruction.component';
import { TableComponent } from '@shared/component/table/table.component';
import { PreviewModal } from '@shared/modal/preview/preview.modal';
import { CsvPipe } from '@shared/pipe/csv.pipe';
import { SqlPipe } from '@shared/pipe/sql.pipe';
import { XmlPipe } from '@shared/pipe/xml.pipe';
import { MocJsonPipe } from '@shared/pipe/moc-json.pipe';
import { DialogModal } from '@shared/modal/modal-provider/dialog/dialog.modal';
import { ChooseTypeModal } from '@shared/modal/choose-type/choose-type.modal';
import { ToastrModal } from '@shared/modal/toastr-provider/toastr/toastr.modal';
import { TooltipComponent } from '@shared/component/tooltip/tooltip.component';
import { ImageComponent } from '@shared/component/image/image.component';
import { GridComponent } from '@shared/component/grid/grid.component';
import { TabsComponent } from '@shared/component/tabs/tabs.component';
import { TabComponent } from '@shared/component/tab/tab.component';
import { ChooseParentModal } from '@shared/modal/choose-parent/choose-parent.modal';
import { CreateEntityModal } from '@shared/modal/create-entity/create-entity.modal';

/**
 * @author Do Quoc Viet
 */

@NgModule({
  declarations: [
    InputComponent,
    ButtonComponent,
    DescriptionComponent,
    ErrorMessageProcessorComponent,
    LoadingComponent,
    DropdownComponent,
    TruncatePipe,
    Tab1Component,
    DateDistancePipe,
    TableDetailComponent,
    CopyrightComponent,
    ChangeLogComponent,
    PopupDirective,
    InstructionComponent,
    TableComponent,
    PreviewModal,
    CsvPipe,
    SqlPipe,
    XmlPipe,
    MocJsonPipe,
    DialogModal,
    ChooseTypeModal,
    ToastrModal,
    TooltipComponent,
    ImageComponent,
    GridComponent,
    TabsComponent,
    TabComponent,
    ChooseParentModal,
    CreateEntityModal
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
    NgClass,
    FormsModule,
    DatePipe,
    RouterLink
  ],
  exports: [
    InputComponent,
    InputComponent,
    LoadingComponent,
    ButtonComponent,
    DropdownComponent,
    DescriptionComponent,
    TruncatePipe,
    Tab1Component,
    DateDistancePipe,
    TableDetailComponent,
    CopyrightComponent,
    ChangeLogComponent,
    PopupDirective,
    InstructionComponent,
    TableComponent,
    DialogModal,
    ChooseTypeModal,
    ToastrModal,
    ImageComponent,
    GridComponent,
    TabsComponent,
    TabComponent
  ],
  providers: []
})
export class SharedModule {
}
