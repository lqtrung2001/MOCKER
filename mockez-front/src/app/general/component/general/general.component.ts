import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-general',
  templateUrl: './general.component.html',
  styleUrls: ['./general.component.scss']
})
export class GeneralComponent implements OnInit {

  isIncludeCreateTable: boolean = false;
  isShowPopup: boolean = false;

  constructor() { }

  ngOnInit(): void {
  }

}
