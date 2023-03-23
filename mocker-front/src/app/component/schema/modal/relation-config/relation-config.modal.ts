import { AbstractModal } from '@core/common/abstract.modal';
import { Component, Injector, OnInit } from '@angular/core';
import { FormControl, FormGroup, Validators } from '@angular/forms';
import { Option } from '@shared/component/dropdown/dropdown.component';
import { RelationTypeEnum } from '@core/domain/enum/relation-type.enum';
import { RelationTypeUtil } from '@core/util/relation-type.util';
import { FieldModel } from '@core/domain/model/field.model';

/**
 * @author Do Quoc Viet
 */

export interface RelationConfigModalOptions {
  id?: string;
  source: FieldModel;
  target: FieldModel;
  description: string;
  relationType: RelationTypeEnum;
}

type Controls = {
  source: FormControl,
  target: FormControl,
  description: FormControl;
  relationType: FormControl
}

@Component({
  selector: 'moc-relation-config-modal',
  templateUrl: 'relation-config.modal.html',
  styleUrls: ['relation-config.modal.scss']
})
export class RelationConfigModal extends AbstractModal implements OnInit {
  override options: RelationConfigModalOptions;
  formGroup: FormGroup<Controls>;

  constructor(
    injector: Injector
  ) {
    super(injector);
    this.formGroup = this.formBuilder.group({
      source: this.formBuilder.control(undefined, [Validators.required]),
      target: this.formBuilder.control(undefined, [Validators.required]),
      description: this.formBuilder.control(undefined, []),
      relationType: this.formBuilder.control(undefined, [Validators.required])
    });
  }

  ngOnInit(): void {
    this.formGroup.patchValue(this.options);
    this.formGroup.controls.source.setValue(`[${this.options.source.table.name}] ${this.options.source.name}`);
    this.formGroup.controls.target.setValue(`[${this.options.target.table.name}] ${this.options.target.name}`);
  }

  override close(): void {
    this.formGroup.markAllAsTouched();
    if (this.formGroup.invalid) {
      return;
    }
    const { description, relationType } = this.formGroup.getRawValue();
    super.close({
      ...this.options,
      description,
      relationType: RelationTypeUtil.fromValue(relationType)
    });
  }

  get relationTypeOptions(): Option[] {
    const relationTypes: string[] = [
      RelationTypeEnum.ONE_TO_ONE,
      RelationTypeEnum.ONE_TO_MANY,
      RelationTypeEnum.MANY_TO_ONE,
      RelationTypeEnum.MANY_TO_MANY
    ];
    return relationTypes
      .map((item: string): RelationTypeEnum => RelationTypeUtil.fromValue(item))
      .map((item: RelationTypeEnum): Option => ({
        id: item,
        label: RelationTypeUtil.getLabel(item),
        click: () => {
          this.formGroup.controls.relationType.setValue(item);
        }
      }));
  }

  get label(): string {
    const value = this.formGroup.controls.relationType.value;
    if (!value) {
      return this.translateService.instant('modal.relation_config.relation_type_placeholder');
    }
    return this.translateService.instant(`enum.${value.toLowerCase()}`);
  }
}
