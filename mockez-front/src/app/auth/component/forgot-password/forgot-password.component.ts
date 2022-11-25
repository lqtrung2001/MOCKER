import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

@Component({
  selector: 'app-forgot-password',
  templateUrl: './forgot-password.component.html',
  styleUrls: ['./forgot-password.component.scss']
})
export class ForgotPasswordComponent implements OnInit {

  credential: FormGroup;

  constructor(
    private formBuilder: FormBuilder,
    private activatedRoute: ActivatedRoute,
    private router: Router,
    private httpClient: HttpClient
  ) {
    this.credential = formBuilder.group({
      email: formBuilder.control('', Validators.required),
      password: formBuilder.control('', Validators.required)
    });
  }

  ngOnInit(): void {
    sessionStorage.setItem('token', '');
  }

  sendCode() {
    const url = 'http://localhost:8080/user/login';
    this.httpClient.post<Observable<boolean>>(url, {
      email: this.credential.get('email')?.value,
      password: this.credential.get('password')?.value
    }).subscribe((isValid: Observable<boolean>) => {
      if (isValid) {
        sessionStorage.setItem('token',
          btoa(`${this.credential.get('email')?.value}:${this.credential.get('password')?.value}`)
        );
        this.router.navigate(['/general']).then();
      } else {
        alert('Authentication failed');
      }
    });
  }

}
