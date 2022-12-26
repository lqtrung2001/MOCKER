import { Component, OnInit } from '@angular/core';
import {FormBuilder, FormControl, FormGroup, Validators} from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import {SignupModal, SignupModalOptions} from "@app/component/auth/modal/sigup/sigup.modal";
import {AuthService} from "@core/service/auth.service";
import {ModalService} from "@shared/modal/modal-service/modal-service.service";

@Component({
  selector: 'app-forgot-password',
  templateUrl: './forgot-password.component.html',
  styleUrls: ['./forgot-password.component.scss']
})
export class ForgotPasswordComponent implements OnInit {

  username: FormControl;

  constructor(
    private formBuilder: FormBuilder,
    private activatedRoute: ActivatedRoute,
    private router: Router,
    private httpClient: HttpClient,
    private authService: AuthService,
    private modalService: ModalService
  ) {
    this.username = formBuilder.control('', Validators.required);
  }

  ngOnInit(): void {

  }

  sendOPT(): void {
    if (this.username.invalid) {
      return;
    }
    this.authService.sentOTPCode(this.username.value).subscribe((res: boolean) => {
      if (!res) {
        return;
      }
      const options: SignupModalOptions = {username: this.username.value};
      this.modalService.open(SignupModal, options)
        .onResult().subscribe((close: boolean) => {
        if (close) {
          this.router.navigate(['/auth/login']).then();
        }
      });
    });
  }

}
