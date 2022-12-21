import { NgModule } from '@angular/core';
import { GroupsComponent } from '@app/component/group/component/groups/groups.component';
import { NgForOf, NgIf, UpperCasePipe } from '@angular/common';
import { SharedModule } from '@shared/shared.module';
import { GroupComponent } from '@app/component/group/component/group/group.component';
import { CreateGroupModal } from '@app/component/group/modal/create-group/create-group.modal';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { TranslateModule } from '@ngx-translate/core';
import { ProjectModule } from '@app/component/project/project.module';
import { RouterLinkWithHref } from '@angular/router';
import { DeleteGroupModal } from '@app/component/group/modal/delete-group/delete-group.modal';
import { AddMemberModal } from '@app/component/group/modal/add-member/add-member.modal';

@NgModule({
  imports: [
    NgForOf,
    SharedModule,
    ReactiveFormsModule,
    FormsModule,
    NgIf,
    TranslateModule,
    ProjectModule,
    RouterLinkWithHref,
    UpperCasePipe
  ],
  declarations: [
    GroupsComponent,
    GroupComponent,
    CreateGroupModal,
    DeleteGroupModal,
    AddMemberModal
  ],
  exports: [],
  providers: []
})
export class GroupModule {
}
