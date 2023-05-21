import { Component, Injector, OnInit } from '@angular/core';
import { AbstractComponent } from '@core/common/abstract.component';
import { GroupModel } from '@core/domain/model/entity/group.model';
import { GroupService } from '@core/service/group.service';
import { FormControl, FormGroup, Validators } from '@angular/forms';
import {
  CreateEntityModal,
  CreateEntityModalCloseOptions,
  CreateEntityModalOptions
} from '@shared/modal/create-entity/create-entity.modal';

/**
 * @author Do Quoc Viet
 */

type Controls = {
  name: FormControl;
  description: FormControl;
}

@Component({
  selector: 'moc-group',
  templateUrl: 'group.component.html',
  styleUrls: ['group.component.scss']
})
export class GroupComponent extends AbstractComponent implements OnInit {
  group: GroupModel;
  formGroup: FormGroup<Controls>;

  constructor(
    injector: Injector,
    private groupService: GroupService
  ) {
    super(injector);
    this.formGroup = this.formBuilder.group({
      name: this.formBuilder.control(undefined, [Validators.required]),
      description: this.formBuilder.control(undefined, [Validators.required])
    });
  }

  ngOnInit(): void {
    const id: string | null = this.activatedRoute.snapshot.paramMap.get('id');
    if (id) {
      this.groupService.getEntity(id).subscribe((group: GroupModel): void => {
        this.group = group;
        this.formGroup.patchValue(group);
      });
    } else {
      setTimeout((): void => {
        const options: CreateEntityModalOptions = {
          type: 'group',
          description: this.translateService.instant('component.groups.information')
        };
        this.modalService.open(CreateEntityModal, options).subscribe((closeOptions: CreateEntityModalCloseOptions): void => {
          if (!closeOptions) {
            return;
          }
          this.group = new GroupModel();
          this.group.name = closeOptions.name;
          this.group.description = closeOptions.description;
          this.formGroup.patchValue(this.group);
          this.submit();
        });
      });
    }
  }

  submit(): void {
    this.formGroup.markAllAsTouched();
    if (this.formGroup.invalid) {
      return;
    }
    this.group = {
      ...this.group,
      ...this.formGroup.getRawValue()
    };
    this.groupService.upsertEntity(this.group).subscribe((group: GroupModel): void => {
      this.groupService.getEntity(group.id).subscribe((group: GroupModel): void => {
        this.group = group;
        this.formGroup.patchValue(group);
        if (this.router.url.includes('new')) {
          this.location.replaceState(`/group/${group.id}`);
        }
      });
    });
    this.toastrProvider.showSuccess({
      body: 'message.group_save_success'
    });
  }

  delete(): void {
    this.modalProvider.showConfirmation({
      body: 'message.group_delete_confirm'
    }).subscribe((result: boolean): void => {
      if (result) {
        this.groupService.deleteEntity(this.group.id).subscribe((group: GroupModel): void => {
          if (group) {
            const detail: string = this.translateService.instant('message.group_delete_success', { name: this.group.name });
            this.toastrProvider.showSuccess({
              detail
            });
            this.router.navigate(['/group']).then();
          }
        });
      }
    });
  }

}
