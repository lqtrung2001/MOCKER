import { Component, Injector, Input } from '@angular/core';
import { StringUtil } from '@core/util/string.util';
import { AbstractComponent } from '@core/common/abstract.component';
import { ValidationErrors } from '@angular/forms';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Component({
  selector: 'moc-error-message-processor',
  templateUrl: 'error-message-processor.component.html',
  styleUrls: ['error-message-processor.component.scss']
})
export class ErrorMessageProcessorComponent extends AbstractComponent {
  @Input() error: ValidationErrors | null;

  constructor(
    injector: Injector
  ) {
    super(injector);
  }

  get errorMessage(): string {
    if (this.error) {
      const errorType: string = Object.keys(this.error).length ? Object.keys(this.error)[0] : StringUtil.EMPTY;
      if (!errorType) {
        return StringUtil.EMPTY;
      }
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
    return StringUtil.EMPTY;
  }

}
