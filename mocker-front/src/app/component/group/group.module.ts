import { NgModule } from '@angular/core';
import { GroupLayoutComponent } from '@app/component/group/group-layout.component';
import { GroupsComponent } from '@app/component/group/component/groups/groups.component';
import { GroupComponent } from '@app/component/group/component/group/group.component';
import { LayoutModule } from '@shared/layout/layout.module';
import { RouterOutlet } from '@angular/router';
import { GroupRoutingModule } from '@app/component/group/group-routing.module';
import { DatePipe, NgForOf, NgIf } from '@angular/common';
import { SharedModule } from '@shared/shared.module';
import { GroupMembersComponent } from '@app/component/group/component/group-members/group-members.component';
import { TranslateModule } from '@ngx-translate/core';
import { GroupProjectsComponent } from '@app/component/group/component/group-projects/group-projects.component';
import { AddUserModal } from '@app/component/group/modal/add-user/add-user.modal';
import { ChangeRoleModal } from '@app/component/group/modal/change-role/change-role.modal';

/**
 * @author Do Quoc Viet
 */

@NgModule({
  declarations: [
    GroupLayoutComponent,
    GroupsComponent,
    GroupComponent,
    GroupMembersComponent,
    GroupProjectsComponent,
    AddUserModal,
    ChangeRoleModal
  ],
  exports: [],
  imports: [
    GroupRoutingModule,
    LayoutModule,
    RouterOutlet,
    NgForOf,
    SharedModule,
    NgIf,
    DatePipe,
    TranslateModule
  ],
  providers: []
})
export class GroupModule {
}
