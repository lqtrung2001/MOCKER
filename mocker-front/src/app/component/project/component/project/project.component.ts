import { Component, Injector, OnInit } from '@angular/core';
import { ProjectService } from '@app/core/service/project.service';
import { AbstractComponent } from '@core/common/abstract.component';
import { ProjectModel } from '@core/domain/model/entity/project.model';
import { FormControl, FormGroup, Validators } from '@angular/forms';
import { GroupService } from '@core/service/group.service';
import { GroupModel } from '@core/domain/model/entity/group.model';
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
  selector: 'moc-project',
  templateUrl: 'project.component.html',
  styleUrls: ['project.component.scss']
})
export class ProjectComponent extends AbstractComponent implements OnInit {
  project: ProjectModel;
  formGroup: FormGroup<Controls>;

  constructor(
    injector: Injector,
    private projectService: ProjectService,
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
      this.projectService.getEntity(id).subscribe((project: ProjectModel): void => {
        this.project = project;
        this.formGroup.patchValue(project);
      });
    } else {
      this.activatedRoute.queryParams.subscribe((params: any): void => {
        if (!params.groupId) {
          return;
        }
        this.groupService.getEntity(params.groupId).subscribe((group: GroupModel): void => {
          if (!group.id) {
            return;
          }
          setTimeout((): void => {
            const options: CreateEntityModalOptions = {
              type: 'project',
              description: this.translateService.instant('component.projects.information')
            };
            this.modalService.open(CreateEntityModal, options).subscribe((closeOptions: CreateEntityModalCloseOptions): void => {
              if (!closeOptions) {
                return;
              }
              this.project = new ProjectModel();
              this.project.group = group;
              this.project.name = closeOptions.name;
              this.project.description = closeOptions.description;
              this.formGroup.patchValue(this.project);
              this.submit();
            });
          });
        });
      });
    }
  }

  submit(): void {
    this.formGroup.markAllAsTouched();
    if (this.formGroup.invalid) {
      return;
    }
    this.project = {
      ...this.project,
      ...this.formGroup.getRawValue()
    };
    this.projectService.upsertEntity(this.project).subscribe((project: ProjectModel): void => {
      this.projectService.getEntity(project.id).subscribe((project: ProjectModel): void => {
        this.project = project;
        this.formGroup.patchValue(project);
        if (this.router.url.includes('new')) {
          this.location.replaceState(`/project/${project.id}`);
        }
      });
      this.toastrProvider.showSuccess({
        body: 'message.project_save_success'
      });
    });
  }

  delete(): void {
    this.modalProvider.showConfirmation({
      body: 'message.project_delete_confirm'
    }).subscribe((result: boolean): void => {
      if (result) {
        this.projectService.deleteEntity(this.project.id).subscribe((project: ProjectModel): void => {
          if (project) {
            const detail: string = this.translateService.instant('message.project_delete_success', { name: this.project.name });
            this.toastrProvider.showSuccess({
              detail
            });
            this.router.navigate(['/project']).then();
          }
        });
      }
    });
  }
}
