import { Component, Injector } from '@angular/core';
import { AbstractComponent } from '@core/class/abstract.component';

/**
 * @author Do Quoc Viet
 */

@Component({
  selector: 'moc-root',
  templateUrl: 'app.component.html',
  styleUrls: ['app.component.scss']
})
export class AppComponent extends AbstractComponent {

  constructor(
    injector: Injector
  ) {
    super(injector);
    const language: string = 'en';
    this.translateService.setDefaultLang(language);
    this.translateService.use(language);
  }

}