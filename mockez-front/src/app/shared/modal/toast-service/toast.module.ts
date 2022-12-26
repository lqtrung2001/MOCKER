import { ModuleWithProviders, NgModule } from '@angular/core';
import { OverlayModule } from '@angular/cdk/overlay';
import { defaultToastConfig, TOAST_CONFIG_TOKEN } from './toast-config';
import { ToastComponent } from '@shared/modal/toast-service/toast/toast.component';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@NgModule({
  imports: [OverlayModule],
  declarations: [ToastComponent],
  entryComponents: [ToastComponent]
})
export class ToastModule {
  public static forRoot(config = defaultToastConfig): ModuleWithProviders<any> {
    return {
      ngModule: ToastModule,
      providers: [
        {
          provide: TOAST_CONFIG_TOKEN,
          useValue: { ...defaultToastConfig, ...config }
        }
      ]
    };
  }
}
