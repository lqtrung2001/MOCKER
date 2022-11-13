import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import { HttpClient } from '@angular/common/http';
import { ModalProvider } from '@shared/modal/modal-provider/modal-provider.modal';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.scss']
})
export class LoginComponent implements OnInit {

  credential: FormGroup;
  invalid: boolean = false;

  constructor(
    private formBuilder: FormBuilder,
    private activatedRoute: ActivatedRoute,
    private router: Router,
    private httpClient: HttpClient,
    private modalProvider: ModalProvider
  ) {
    this.credential = formBuilder.group({
      email: formBuilder.control('', Validators.required),
      password: formBuilder.control('', Validators.required)
    });
  }

  ngOnInit(): void {
    sessionStorage.setItem('token', '');
  }

  login() {
    // const url = 'http://localhost:8080/user/login';
    // this.httpClient.post<Observable<boolean>>(url, {
    //   email: this.credential.get('email')?.value,
    //   password: this.credential.get('password')?.value
    // }).subscribe((isValid: Observable<boolean>) => {
    //   if (isValid) {
    //     sessionStorage.setItem('token',
    //       btoa(`${this.credential.get('email')?.value}:${this.credential.get('password')?.value}`)
    //     );
    //     this.router.navigate(['/general']).then();
    //   } else {
    //     alert('Authentication failed');
    //   }
    // });
    this.invalid = true;
  }

}
