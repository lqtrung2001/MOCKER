import { AbstractComponent } from '@core/class/abstract.component';
import { Component, Injector, Input } from '@angular/core';

@Component({
  selector: 'moc-description',
  templateUrl: 'description.component.html',
  styleUrls: ['description.component.scss']
})
export class DescriptionComponent extends AbstractComponent {
  @Input() class: string;
  @Input() description: string;

  constructor(
    injector: Injector
  ) {
    super(injector);
  }
}
