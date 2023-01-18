import { Component, Input } from '@angular/core';
import { TranslateService } from '@ngx-translate/core';
import { Strings } from '@shared/util/strings';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Component({
  selector: 'moc-form-error-processor',
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
    if (this.error instanceof Object) {
      const errorType: string = Object.keys(this.error).length ? Object.keys(this.error)[0] : Strings.EMPTY;
      let parameter: any;
      switch (errorType) {
        case 'maxlength':
        case 'minlength': {
          parameter = {
            length: this.error[errorType].requiredLength
          };
          break;
        }
        default: {
          parameter = undefined;
        }
      }
      return this.translateService.instant(`validator.${errorType}`, parameter);
    }
    return Strings.EMPTY;
  }

}
