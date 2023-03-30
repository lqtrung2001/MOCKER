import { AbstractControl, FormArray, FormGroup, ValidationErrors, ValidatorFn } from '@angular/forms';
import { FieldControls } from '@shared/component/table-detail/table-detail.component';

/**
 * @author Do Quoc Viet
 */

export function UniqueFieldNameValidator(formArray: FormArray<FormGroup<FieldControls>>, index: number): ValidatorFn {
  return (control: AbstractControl): (ValidationErrors | null) => {
    const names: string[] = formArray.controls
      .map((formGroup: FormGroup<FieldControls>, i: number): string => {
        const value: string = formGroup.controls.name.value;
        if (i !== index && value && control.value && value === control.value) {
          formGroup.controls.name.markAsTouched();
          formGroup.controls.name.setErrors({
            unique_field_name: control.value
          });
        } else {
          const invalid: boolean = formArray.controls.some((item: FormGroup<FieldControls>, i2: number): boolean => {
            return i !== i2
              && item.controls.name.value
              && item.controls.name.value === value;
          });
          if (!invalid) {
            const errors: ValidationErrors | null = formGroup.controls.name.errors;
            if (errors) {
              delete errors['unique_field_name'];
              formGroup.controls.name.setErrors(Object.keys(errors).length ? errors : null);
            }
          }
        }
        return value;
      })
      .filter((name: string, i: number) => name && i !== index);
    return names.includes(control.value) ? { unique_field_name: control.value } : null;
  };
}
