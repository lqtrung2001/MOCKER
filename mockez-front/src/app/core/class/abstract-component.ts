/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */
import { FormControl } from '@angular/forms';

export class AbstractComponent {

  getRawValue(formControls: any): any {
    if (formControls) {
      let obj = {};
      Object.keys(formControls).forEach((key: string) => {
        obj = {
          ...obj,
          [key]: formControls[key].getRawValue()
        };
      });
      return obj;
    }
    return {};
  }

  invalid(formControls: any): boolean {
    if (formControls) {
      return Object.keys(formControls).some((key: string) => formControls[key].invalid);
    }
    return true;
  }

  markAllAsDirtyAndTouched(formControls: any): void {
    if (formControls) {
      Object.keys(formControls).some((key: string) => {
        const formControl: FormControl = formControls[key];
        formControl.markAsDirty();
        formControl.markAsTouched();
      });
    }
  }
}
