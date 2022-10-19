import { Component, EventEmitter, Input, OnInit, Output } from '@angular/core';
import { ConverterService } from '@core/util/converter.service';
import { DataProviderService } from '@shared/service/data-provider.service';
import { Modal } from '@shared/modal/modal-service/model/modal.model';

@Component({
  selector: 'app-preview',
  templateUrl: './preview.component.html',
  styleUrls: ['./preview.component.scss']
})
export class PreviewComponent extends Modal{

  @Output() exitEventEmitter: EventEmitter<any> = new EventEmitter();
  data: any[] = [];
  @Input() tableName: string = '';
  @Input() format: string = 'JSON';

  isTable: boolean = false;

  onInjectInputs(input: any): void {
  }

  public closeOnClick(): void {
    this.close();
  }

}
