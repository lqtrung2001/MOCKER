import { Component, Injector } from '@angular/core';
import { SharedComponent } from '@shared/component/common/shared.component';

@Component({
  selector: 'moc-description',
  templateUrl: 'description.component.html',
  styleUrls: ['description.component.scss']
})
export class DescriptionComponent extends SharedComponent {
  constructor(
    injector: Injector
  ) {
    super(injector);
  }
}
