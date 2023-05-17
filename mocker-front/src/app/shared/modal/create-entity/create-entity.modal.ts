import { AbstractModal } from '@core/common/abstract.modal';
import { Component, Injector } from '@angular/core';
import { FormControl, FormGroup, Validators } from '@angular/forms';
import { StringUtil } from '@core/util/string.util';

/**
 * @author Do Quoc Viet
 */

type Controls = {
  name: FormControl;
  description: FormControl;
}

export interface CreateEntityModalOptions {
  type: 'schema' | 'project' | 'group';
  description: string;
}

export interface CreateEntityModalCloseOptions {
  name: string;
  description: string;
}

@Component({
  selector: 'moc-create-entity-modal',
  templateUrl: 'create-entity.modal.html',
  styleUrls: ['create-entity.modal.scss']
})
export class CreateEntityModal extends AbstractModal {
  override options: CreateEntityModalOptions;
  formGroup: FormGroup<Controls>;

  constructor(
    injector: Injector
  ) {
    super(injector);
    this.formGroup = this.formBuilder.group({
      name: this.formBuilder.control(undefined, [Validators.required]),
      description: this.formBuilder.control(undefined, [Validators.required])
    });
  }

  submit(): void {
    if (this.formGroup.invalid) {
      return;
    }
    this.close(this.formGroup.getRawValue());
  }

  cancel(): void {
    this.router.navigate([`/${this.options.type}`]).then((): void => {
      this.close();
    });
  }

  get title(): string {
    if (!this.options) {
      return StringUtil.EMPTY;
    }
    return this.translateService.instant('modal.create_entity.title', { entity: this.options.type });
  }
}
