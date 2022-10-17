import { Component, Input } from '@angular/core';
import { FormBuilder, FormGroup } from '@angular/forms';

@Component({
  selector: 'app-configuration',
  templateUrl: './configuration.component.html',
  styleUrls: ['./configuration.component.scss']
})
export class ConfigurationComponent {

  @Input() configuration: FormGroup;

  constructor(
    private formBuilder: FormBuilder
  ) {
    this.configuration = this.formBuilder.group([]);
  }

  public selectFormatOnClick() {

  }
}
