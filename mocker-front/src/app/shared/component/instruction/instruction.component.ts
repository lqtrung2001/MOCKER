import { Component, Injector } from '@angular/core';
import { AbstractSharedComponent } from '@shared/component/common/abstract-shared.component';

@Component({
  selector: 'moc-instruction',
  templateUrl: 'instruction.component.html',
  styleUrls: ['instruction.component.scss']
})
export class InstructionComponent extends AbstractSharedComponent {
  constructor(
    injector: Injector
  ) {
    super(injector);
  }
}
