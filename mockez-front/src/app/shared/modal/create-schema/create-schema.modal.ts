import { Component } from '@angular/core';
import { Modal } from '@shared/modal/modal-service/model/modal.model';

@Component({
  selector: 'app-create-schema-modal',
  templateUrl: './create-schema.modal.html',
  styleUrls: ['./create-schema.modal.scss']
})
export class CreateSchemaModal extends Modal {

  onInjectInputs(input: any): void {

  }
}
