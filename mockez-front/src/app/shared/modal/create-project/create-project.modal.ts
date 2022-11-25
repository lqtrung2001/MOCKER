import { Component } from '@angular/core';
import { Modal } from '@shared/modal/modal-service/model/modal.model';

@Component({
  selector: 'app-create-projects',
  templateUrl: './create-project.modal.html',
  styleUrls: ['./create-project.modal.scss']
})
export class CreateProjectModal extends Modal {

  onInjectInputs(input: any): void {

  }
}
