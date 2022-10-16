import { Component, EventEmitter, OnInit, Output } from '@angular/core';

@Component({
  selector: 'app-footer',
  templateUrl: './footer.component.html',
  styleUrls: ['./footer.component.scss']
})
export class FooterComponent {

  @Output() previewOnClickEventEmitter: EventEmitter<any> = new EventEmitter();
  @Output() downloadOnClickEventEmitter: EventEmitter<any> = new EventEmitter();

  isDisplayPreview: boolean = false;

  constructor() { }



}
