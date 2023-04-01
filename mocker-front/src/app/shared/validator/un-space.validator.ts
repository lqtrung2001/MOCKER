import { AbstractControl, ValidationErrors, ValidatorFn } from '@angular/forms';
import { StringUtil } from '@core/util/string.util';

/**
 * @author Do Quoc Viet
 */

export function UnSpaceValidator(): ValidatorFn {
  return (control: AbstractControl): (ValidationErrors | null) => {
    if (control.value && control.value.includes(StringUtil.SPACE)) {
      return {
        un_space: control.value
      };
    }
    return null;
  };
}
