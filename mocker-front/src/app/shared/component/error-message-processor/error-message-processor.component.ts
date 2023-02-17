import { Component, Injector, Input } from '@angular/core';
import { TranslateService } from '@ngx-translate/core';
import { Strings } from '@shared/util/strings';
import { AbstractComponent } from '@core/class/abstract.component';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Component({
  selector: 'moc-error-message-processor',
  templateUrl: 'error-message-processor.component.html',
  styleUrls: ['error-message-processor.component.scss']
})
export class ErrorMessageProcessorComponent extends AbstractComponent {
  @Input() error: any;

  constructor(
    injector: Injector
  ) {
    super(injector);
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
