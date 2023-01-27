import { NgModule } from '@angular/core';
import { ROUTING } from '@app/component/group/group.routing';
import { GroupsComponent } from '@app/component/group/component/groups/groups.component';
import { GroupComponent } from '@app/component/group/component/group/group.component';
import { GroupLayoutComponent } from '@app/component/group/group-layout.component';
import { LayoutModule } from '@shared/layout/layout.module';

/**
 * @author Do Quoc Viet
 */

@NgModule({
  declarations: [
    GroupLayoutComponent,
    GroupsComponent,
    GroupComponent
  ],
  exports: [],
  imports: [
    ROUTING,
    LayoutModule
  ],
  providers: []
})
export class GroupModule {
}
