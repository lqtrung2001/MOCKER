import { NgModule } from '@angular/core';
import { GroupLayoutComponent } from '@app/component/group/group-layout.component';
import { GroupsComponent } from '@app/component/group/component/groups/groups.component';
import { GroupComponent } from '@app/component/group/component/group/group.component';
import { LayoutModule } from '@shared/layout/layout.module';
import { RouterOutlet } from '@angular/router';
import { GroupRoutingModule } from '@app/component/group/group-routing.module';

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
    GroupRoutingModule,
    LayoutModule,
    RouterOutlet
  ],
  providers: []
})
export class GroupModule {
}
