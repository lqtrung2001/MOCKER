import { NgModule } from '@angular/core';
import { GroupsComponent } from '@app/component/group/component/groups/groups.component';
import { NgForOf } from '@angular/common';
import { SharedModule } from '@shared/shared.module';
import { GroupComponent } from '@app/component/group/component/group/group.component';
import { CreateGroupModal } from '@app/component/group/modal/create-group/create-group.modal';
import { ReactiveFormsModule } from '@angular/forms';

@NgModule({
  imports: [
    NgForOf,
    SharedModule,
    ReactiveFormsModule
  ],
  declarations: [
    GroupsComponent,
    GroupComponent,
    CreateGroupModal
  ],
  exports: [],
  providers: []
})
export class GroupModule {
}
