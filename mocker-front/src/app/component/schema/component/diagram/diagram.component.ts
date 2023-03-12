import { AbstractComponent } from '@core/common/abstract.component';
import { Component, Injector, Input } from '@angular/core';
import { CdkDragEnd, CdkDragMove, CdkDragStart } from '@angular/cdk/drag-drop';
import { TableModel } from '@core/domain/model/table.model';
import { FieldModel } from '@core/domain/model/field.model';

/**
 * @author Do Quoc Viet
 */

@Component({
  selector: 'moc-diagram',
  templateUrl: 'diagram.component.html',
  styleUrls: ['diagram.component.scss']
})
export class DiagramComponent extends AbstractComponent {
  @Input() tables: TableModel[] = [];
  currentField: FieldModel | undefined;

  constructor(
    injector: Injector
  ) {
    super(injector);
  }

  dragStarted(event: CdkDragStart): void {
    console.log('dragStart');
  }

  dragEnded(event: CdkDragEnd) {
    console.log('dragEnded');
  }

  dragMoved(event: CdkDragMove) {
    console.log('dragMoved');
    console.log(`> Position X: ${event.pointerPosition.x} - Y: ${event.pointerPosition.y}`);
  }

  map(field: FieldModel): void {
    if (this.currentField) {
      console.log(this.currentField.name + ' will be mapped to ' + field.name);
      this.currentField = undefined;
    } else {
      this.currentField = field;
    }
  }


}
