import { Component, Input } from '@angular/core';
import { TranslateService } from '@ngx-translate/core';

@Component({
  selector: 'app-form-error-processor',
  templateUrl: 'form-error-processor.component.html',
  styleUrls: ['form-error-processor.component.scss']
})
export class FormErrorProcessorComponent {

  @Input() error: any;

  constructor(
    private translateService: TranslateService
  ) {
  }

  get errorMessage(): string {
    const errorType = Object.keys(this.error)[0];
    if (errorType) {
      return this.translateService.instant(`validator.${errorType}`);
    }
    return '';
  }

}
