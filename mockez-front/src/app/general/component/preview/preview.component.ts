import { Component, EventEmitter, Input, OnInit, Output } from '@angular/core';
import { ConverterService } from '@core/util/converter.service';

@Component({
  selector: 'app-preview',
  templateUrl: './preview.component.html',
  styleUrls: ['./preview.component.scss']
})
export class PreviewComponent implements OnInit {

  @Output() exitEventEmitter: EventEmitter<any> = new EventEmitter();
  @Input() data: any[] = [];
  @Input() format: string = 'JSON';

  isTable: boolean = false;

  constructor(
    private converterService: ConverterService
  ) {
  }

  ngOnInit(): void {

  }

}
