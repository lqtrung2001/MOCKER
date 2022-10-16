import { Component, EventEmitter, Input, OnInit, Output } from '@angular/core';
import { ConverterService } from '@core/util/converter.service';
import { DataProviderService } from '@shared/service/data-provider.service';

@Component({
  selector: 'app-preview',
  templateUrl: './preview.component.html',
  styleUrls: ['./preview.component.scss']
})
export class PreviewComponent {

  @Output() exitEventEmitter: EventEmitter<any> = new EventEmitter();
  data: any[] = [];
  @Input() tableName: string = '';
  @Input() format: string = 'JSON';

  isTable: boolean = false;

  constructor(
    private DataProviderService: DataProviderService,
    private converterService: ConverterService
  ) {
    this.data = this.DataProviderService.data;
  }

}
