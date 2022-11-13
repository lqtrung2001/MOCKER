import { Component, OnInit } from '@angular/core';
import { ModalProvider } from '@shared/modal/modal-provider/modal-provider.modal';

@Component({
  selector: 'app-navigation',
  templateUrl: './navigation.component.html',
  styleUrls: ['./navigation.component.scss']
})
export class NavigationComponent implements OnInit {

  isLight: boolean = false;

  constructor(
    private modalProvider: ModalProvider
  ) {
  }

  ngOnInit(): void {
  }

  public featureNotAvailable(): void {
    this.modalProvider.showError({
      body: 'Sorry, at the moment, this feature is still in development.'
    });
  }
}
