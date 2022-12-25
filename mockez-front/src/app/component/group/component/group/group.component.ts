import { Component } from '@angular/core';
import { Group } from '@core/model/group';
import { GroupService } from '@core/service/group.service';
import { ActivatedRoute, Router } from '@angular/router';
import { FormBuilder, FormControl, FormGroup, Validators } from '@angular/forms';
import { Project } from '@core/model/project';
import { GroupMember } from '@core/model/group-member';
import { ModalService } from '@shared/modal/modal-service/modal-service.service';
import { DeleteGroupModal } from '@app/component/group/modal/delete-group/delete-group.modal';
import { AppConfigProviderService } from '@core/service/app-config-provider.service';
import { ModalProvider } from '@shared/modal/modal-provider/modal-provider.modal';
import { GroupMemberService } from '@core/service/group-member.service';
import { AddMemberModal, AddMemberModalOptions } from '@app/component/group/modal/add-member/add-member.modal';
import { User } from '@core/model/user';
import { GroupMemberPk } from '@core/model/composite_key/group-member-pk';
import { SaveProjectModal } from '@app/component/project/modal/save-project/save-project.modal';

@Component({
  selector: 'app-group',
  templateUrl: './group.component.html',
  styleUrls: ['./group.component.scss']
})
export class GroupComponent {

  storageProjects: Project[];
  storageGroupMembers: GroupMember[];
  group: Group;
  formGroup: FormGroup;
  filterProject: FormControl;
  filterGroupMember: FormControl;
  tab: 'PROJECT' | 'MEMBER' | 'PROPERTIES';

  constructor(
    private groupService: GroupService,
    private activatedRoute: ActivatedRoute,
    private router: Router,
    private formBuilder: FormBuilder,
    private modalService: ModalService,
    public appConfigProviderService: AppConfigProviderService,
    private modalProvider: ModalProvider,
    private groupMemberService: GroupMemberService
  ) {
    this.filterProject = formBuilder.control('');
    this.filterGroupMember = formBuilder.control('');
    this.filterProject.valueChanges.subscribe((value: string) => {
      this.group.projects = this.storageProjects.filter((project: Project) =>
        project.name?.toUpperCase().includes(value.toUpperCase())
        || project.summary?.toUpperCase().includes(value.toUpperCase())
        || project.description?.toUpperCase().includes(value.toUpperCase()));
    });
    this.filterGroupMember.valueChanges.subscribe((value: string) => {
      this.group.groupMembers = this.storageGroupMembers.filter((groupMember: GroupMember) =>
        groupMember.user?.name?.toUpperCase().includes(value.toUpperCase())
      );
    });
    this.formGroup = formBuilder.group({
      name: formBuilder.control('', [Validators.required]),
      description: formBuilder.control('', [Validators.required])
    });
    this.tab = 'PROJECT';
    const id: string = activatedRoute.snapshot.params['id'];
    if (!id) {
      router.navigate(['group']).then(() => {
        return;
      });
    } else {
      this.load(id);
    }
  }

  load(id: string) {
    this.groupService.getGroup(id).subscribe((group: Group) => {
      this.group = group;
      this.storageProjects = group.projects;
      this.storageGroupMembers = group.groupMembers;
      this.formGroup.patchValue(group);
    });
  }

  deleteGroup(): void {
    this.modalService.open(DeleteGroupModal, this.group).onResult()
      .subscribe((close: boolean) => {
        if (close) {
          this.groupService.delete(this.group.id!).subscribe(() => {
            this.router.navigate(['/group']).then(() => {
              console.log('Group deleted');
            });
          });
        }
      });
  }

  saveGroup(): void {
    if (this.formGroup.invalid) {
      return;
    }
    this.group.groupMembers = this.storageGroupMembers;
    this.group.projects = this.storageProjects;
    this.group.name = this.formGroup.get('name')?.value;
    this.group.description = this.formGroup.get('description')?.value;
    this.groupService.saveOrUpdate(this.group).subscribe((id: string) => {
      this.load(id);
    });
  }

  addMember(): void {
    const options: AddMemberModalOptions = {
      groupMembers: this.storageGroupMembers
    };
    this.modalService.open(AddMemberModal, options).onResult().subscribe((user: User) => {
      if (user) {
        const groupMemberPK: GroupMemberPk = new GroupMemberPk();
        groupMemberPK.userId = user.id;
        groupMemberPK.groupId = this.group.id;
        this.groupMemberService.addMember(groupMemberPK).subscribe((groupMemberPK: GroupMemberPk) => {
          if (groupMemberPK) {
            this.load(this.group.id!);
          }
        });
      }
    });
  }

  removeUser(groupMember: GroupMember): void {
    const isPrinciple: boolean = groupMember.user?.id === this.appConfigProviderService.auth.id;
    const content: string = isPrinciple
      ? 'Are you sure leaving this group anyway'
      : 'Are you sure you want to remove user from this group';
    this.modalProvider.showConfirmation({
      body: content
    }).subscribe((ok: boolean) => {
      if (ok) {
        this.groupMemberService.delete(groupMember.id!).subscribe((id) => {
          if (id) {
            if (isPrinciple) {
              this.router.navigate(['group']).then();
            } else {
              this.load(this.group.id!);
            }
          }
        });
      }
    });
  }

  addProject(): void {
    this.modalService.open(SaveProjectModal, {
      group: this.group
    }).onResult()
      .subscribe((id: string) => {
        if (id) {
          this.router.navigate(['/project/' + id]).then(() => {
            console.log('Project created successfully');
          });
        }
      });
  }
}
