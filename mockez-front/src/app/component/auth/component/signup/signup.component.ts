import {Component} from '@angular/core';
import {FormBuilder, FormGroup, Validators} from '@angular/forms';
import {ActivatedRoute, Router} from '@angular/router';
import {HttpClient} from '@angular/common/http';
import {ModalService} from "@shared/modal/modal-service/modal-service.service";
import {ModalProvider} from "@shared/modal/modal-provider/modal-provider.modal";
import {TableOptionModalOptions} from "@app/component/table/modal/table-option/table-option.modal";
import {SignupModal, SignupModalOptions} from "@app/component/auth/modal/sigup/sigup.modal";
import {AuthService} from "@core/service/auth.service";

@Component({
  selector: 'app-signup',
  templateUrl: './signup.component.html',
  styleUrls: ['./signup.component.scss']
})
export class SignupComponent {

  formGroup: FormGroup;

  constructor(
    private formBuilder: FormBuilder,
    private activatedRoute: ActivatedRoute,
    private router: Router,
    private modalService: ModalService,
    private modalProvider: ModalProvider,
    private authService: AuthService
  ) {
    this.formGroup = formBuilder.group({
      username: formBuilder.control('', [Validators.required]),
      password: formBuilder.control('', [Validators.required])
    });
  }

  sendOPT(): void {
    if (this.formGroup.invalid) {
      return;
    }
    const {username, password} = this.formGroup.getRawValue();
    this.authService.sentOTPCode(username).subscribe((res: boolean) => {
      if (!res) {
        return;
      }
      const options: SignupModalOptions = {username, password};
      this.modalService.open(SignupModal, options)
        .onResult().subscribe((close: boolean) => {
        if (close) {
          this.router.navigate(['/profile']).then();
        }
      });
    });
  }
}
