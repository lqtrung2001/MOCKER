import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import {
  ModalContainerComponent
} from '@shared/modal/modal-service/component/modal-container/modal-container.component';
import { ModalService } from '@shared/modal/modal-service/modal-service.service';

@NgModule({
  imports: [
    CommonModule
  ],
  declarations: [
    ModalContainerComponent
  ],
  entryComponents: [
    ModalContainerComponent
  ]
})
export class ModalServiceModule {
  static forRoot() {
    return {
      ngModule: ModalServiceModule,
      providers: [
        ModalService
      ]
    };
  }
}
