import { Component, Injector, OnInit } from '@angular/core';
import { AbstractComponent } from '@core/common/abstract.component';
import { GroupModel } from '@core/domain/model/entity/group.model';
import { GroupService } from '@core/service/group.service';
import { ImageProcessorUtil } from '@core/util/image-processor.util';

/**
 * @author Do Quoc Viet
 */

@Component({
  selector: 'moc-group',
  templateUrl: 'group.component.html',
  styleUrls: ['group.component.scss']
})
export class GroupComponent extends AbstractComponent implements OnInit {
  group: GroupModel;

  constructor(
    injector: Injector,
    private groupService: GroupService
  ) {
    super(injector);
  }

  ngOnInit(): void {
    const id: string | null = this.activatedRoute.snapshot.paramMap.get('id');
    if (!id) {
      throw new Error('The id is required');
    }
    this.groupService.getEntity(id).subscribe((group: GroupModel): void => {
      this.group = group;
      console.log(group)
    })
  }

  protected readonly ImageProcessorUtil = ImageProcessorUtil;
}
