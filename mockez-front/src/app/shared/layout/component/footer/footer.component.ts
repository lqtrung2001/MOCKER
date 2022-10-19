import { Component } from '@angular/core';
import { ModalService } from '@shared/modal/modal-service/modal-service.service';
import { PreviewComponent } from '@shared/component/preview/preview.component';

@Component({
  selector: 'app-footer',
  templateUrl: './footer.component.html',
  styleUrls: ['./footer.component.scss']
})
export class FooterComponent {

  constructor(
    private modalService: ModalService
  ) { }

  public previewOnClick(): void {
    this.modalService.open(PreviewComponent)
      .onResult().subscribe(() => {
        console.log('Close');
    })
  }




}
