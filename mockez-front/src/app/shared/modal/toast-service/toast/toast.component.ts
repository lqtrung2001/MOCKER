import { Component } from '@angular/core';
import { toastAnimations } from '@shared/modal/toast-service/toast-animation';

@Component({
  selector: 'app-toast',
  templateUrl: './toast.component.html',
  styleUrls: ['./toast.component.scss'],
  animations: [toastAnimations.fadeToast]
})
export class ToastComponent {

}
