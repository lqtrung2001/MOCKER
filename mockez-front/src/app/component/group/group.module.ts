import { NgModule } from '@angular/core';
import { GroupsComponent } from '@app/component/group/component/groups/groups.component';
import { NgForOf, NgIf } from '@angular/common';
import { SharedModule } from '@shared/shared.module';
import { GroupComponent } from '@app/component/group/component/group/group.component';
import { CreateGroupModal } from '@app/component/group/modal/create-group/create-group.modal';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { TranslateModule } from '@ngx-translate/core';

@NgModule({
  imports: [
    NgForOf,
    SharedModule,
    ReactiveFormsModule,
    FormsModule,
    NgIf,
    TranslateModule
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
