import { Component, EventEmitter, Input, OnInit, Output } from '@angular/core';
import { Category } from '@core/model/Category.modal';

@Component({
  selector: 'app-select-type',
  templateUrl: './select-type.component.html',
  styleUrls: ['./select-type.component.scss']
})
export class SelectTypeComponent implements OnInit {

  @Output() exitEventEmitter: EventEmitter<string> = new EventEmitter<string>();
  @Input() categories: Category[] = [];

  constructor() { }

  ngOnInit(): void {
  }

}
