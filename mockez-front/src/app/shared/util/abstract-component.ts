/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

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
}
