import { FormBuilder } from '@angular/forms';
import { AppConfigService } from '@core/service/app-config.service';
import { Injector } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { ModalProvider } from '@app/shared/modal/modal-provider/modal-provider.modal';
import { ModalService } from '@shared/modal/modal-service/modal-service.service';
import { TranslateService } from '@ngx-translate/core';
import { ToastrProvider } from '@shared/modal/toastr-provider/toastr-provider';

/**
 * @author Do Quoc Viet
 * @date 05/02/2023
 */

export abstract class AbstractComponent {
  protected appConfigService: AppConfigService;
  protected router: Router;
  protected activatedRoute: ActivatedRoute;
  protected modalProvider: ModalProvider;
  protected modalService: ModalService;
  protected formBuilder: FormBuilder;
  protected translateService: TranslateService;
  protected toastProvider: ToastrProvider;

  protected constructor(injector: Injector) {
    this.appConfigService = injector.get(AppConfigService);
    this.router = injector.get(Router);
    this.activatedRoute = injector.get(ActivatedRoute);
    this.modalProvider = injector.get(ModalProvider);
    this.modalService = injector.get(ModalService);
    this.formBuilder = injector.get(FormBuilder);
    this.translateService = injector.get(TranslateService);
    this.toastProvider = injector.get(ToastrProvider);
  }

}
