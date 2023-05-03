import { AbstractModal } from '@core/common/abstract.modal';
import { Component, Injector } from '@angular/core';

/**
 * @author Do Quoc Viet
 */

@Component({
  selector: 'moc-change-role-moal',
  templateUrl: 'change-role.modal.html',
  styleUrls: ['change-role.modal.scss']
})
export class ChangeRoleModal extends AbstractModal {
  constructor(injector: Injector) {
    super(injector);
  }
}
