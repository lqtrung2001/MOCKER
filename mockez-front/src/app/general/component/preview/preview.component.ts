import { Component, EventEmitter, OnInit, Output } from '@angular/core';

@Component({
  selector: 'app-preview',
  templateUrl: './preview.component.html',
  styleUrls: ['./preview.component.scss']
})
export class PreviewComponent implements OnInit {

  @Output() exitEventEmitter: EventEmitter<any> = new EventEmitter();

  isTable: boolean = false;

  constructor() {
  }

  rows: any[] = [];

  ngOnInit(): void {
    this.rows.push([{
      id: 1,
      first_name: `Gerri`,
      last_name: `Variant`,
      email: `gvarian0@joomla.org`,
      gender: `Female`,
      id_address: `47.80.7.226`
    }]);
  }

}
