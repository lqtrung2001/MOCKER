import { FormBuilder } from '@angular/forms';
import { ApplicationConfig } from '@core/config/application.config';
import { Injector } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { ModalProvider } from '@shared/modal/modal-provider/modal-provider.modal';
import { ModalService } from '@shared/modal/modal-service/modal-service.service';
import { TranslateService } from '@ngx-translate/core';
import { ToastrProvider } from '@shared/modal/toastr-provider/toastr-provider';
import { DatePipe } from '@angular/common';
import { TruncatePipe } from '@shared/pipe/truncate.pipe';

/**
 * @author Do Quoc Viet
 */

export abstract class AbstractComponent {
  protected applicationConfig: ApplicationConfig;
  protected router: Router;
  protected activatedRoute: ActivatedRoute;
  protected modalProvider: ModalProvider;
  protected modalService: ModalService;
  protected formBuilder: FormBuilder;
  protected translateService: TranslateService;
  protected toastrProvider: ToastrProvider;

  // Pipe
  protected datePipe: DatePipe;
  protected truncatePipe: TruncatePipe;

  protected constructor(injector: Injector) {
    this.applicationConfig = injector.get(ApplicationConfig);
    this.router = injector.get(Router);
    this.activatedRoute = injector.get(ActivatedRoute);
    this.modalProvider = injector.get(ModalProvider);
    this.modalService = injector.get(ModalService);
    this.formBuilder = injector.get(FormBuilder);
    this.translateService = injector.get(TranslateService);
    this.toastrProvider = injector.get(ToastrProvider);
    this.datePipe = new DatePipe('en');
    this.truncatePipe = new TruncatePipe();
  }

}
