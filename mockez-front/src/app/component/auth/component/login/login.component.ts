import { Component } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import { HttpClient, HttpErrorResponse, HttpResponse } from '@angular/common/http';
import { ModalProvider } from '@shared/modal/modal-provider/modal-provider.modal';
import { AuthService } from '@core/service/auth.service';
import { UserService } from '@core/service/user.service';
import { User } from '@core/model/user';
import { catchError, of } from 'rxjs';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.scss']
})
export class LoginComponent {

  authFormGroup: FormGroup;
  invalid: boolean = false;

  constructor(
    private formBuilder: FormBuilder,
    private activatedRoute: ActivatedRoute,
    private router: Router,
    private httpClient: HttpClient,
    private modalProvider: ModalProvider,
    private authService: AuthService,
    private userService: UserService
  ) {
    this.authFormGroup = formBuilder.group({
      username: formBuilder.control('', Validators.required),
      password: formBuilder.control('', Validators.required)
    });
    this.authFormGroup.valueChanges.subscribe(() => {
      if (this.invalid) {
        this.invalid = false;
      }
    });
  }

  login(): void {
    if (this.authFormGroup.invalid) {
      return;
    }
    this.authService.login(
      this.authFormGroup.get('username')?.value,
      this.authFormGroup.get('password')?.value
    ).pipe(catchError((httpErrorResponse: HttpErrorResponse) => {
      this.invalid = true;
      return of(httpErrorResponse);
    })).subscribe((httpResponse: HttpResponse<any>) => {
      const token = httpResponse.headers.get('Authorization');
      const userAgent = httpResponse.headers.get('User-Agent');
      if (token && userAgent) {
        localStorage.setItem('token', token);
        this.userService.findOneByUsername(userAgent)
          .subscribe((user: User) => {
            user.password = this.authFormGroup.get('password')?.value;
            localStorage.setItem('user', JSON.stringify(user));
            const returnUrl = this.activatedRoute.snapshot.queryParamMap.get('returnUrl') || '/notification';
            this.router.navigate([returnUrl]).then(() => {
              console.log('Login successful');
            });
          });
      } else {
        this.invalid = true;
      }
    });
  }

}
