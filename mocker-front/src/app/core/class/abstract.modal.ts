import { Modal } from '@shared/modal/modal-service/model/modal.model';
import { AppConfigService } from '@core/service/app-config.service';
import { ActivatedRoute, Router } from '@angular/router';
import { ModalProvider } from '@shared/modal/modal-provider/modal-provider.modal';
import { ModalService } from '@shared/modal/modal-service/modal-service.service';
import { FormBuilder } from '@angular/forms';
import { TranslateService } from '@ngx-translate/core';
import { Injector } from '@angular/core';

/**
 * @author Do Quoc Viet
 */

export abstract class AbstractModal extends Modal {
  options: any;
  protected appConfigService: AppConfigService;
  protected router: Router;
  protected activatedRoute: ActivatedRoute;
  protected modalProvider: ModalProvider;
  protected modalService: ModalService;
  protected formBuilder: FormBuilder;
  protected translateService: TranslateService;

  protected constructor(injector: Injector) {
    super();
    this.appConfigService = injector.get(AppConfigService);
    this.router = injector.get(Router);
    this.activatedRoute = injector.get(ActivatedRoute);
    this.modalProvider = injector.get(ModalProvider);
    this.modalService = injector.get(ModalService);
    this.formBuilder = injector.get(FormBuilder);
    this.translateService = injector.get(TranslateService);
  }

  onInjectInputs(input: any): void {
    this.options = input;
  }

}
