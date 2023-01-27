import { Component, Injector, Input } from '@angular/core';
import { AbstractComponent } from '@core/class/abstract.component';

@Component({
  selector: 'moc-button',
  templateUrl: 'button.component.html',
  styleUrls: ['button.component.scss']
})
export class ButtonComponent extends AbstractComponent {
  @Input() label: string;
  @Input() classes: string;
  @Input() styles: string;

  constructor(
    injector: Injector
  ) {
    super(injector);
  }
}
