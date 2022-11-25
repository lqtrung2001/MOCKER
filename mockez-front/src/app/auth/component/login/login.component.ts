import { Component } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import { HttpClient, HttpErrorResponse, HttpResponse } from '@angular/common/http';
import { ModalProvider } from '@shared/modal/modal-provider/modal-provider.modal';
import { AuthService } from '@core/service/auth.service';
import { UserService } from '@app/core/service/user.service';
import { User } from '@core/model/user';
import { catchError, of } from 'rxjs';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.scss']
})
export class LoginComponent {

  auth: FormGroup;
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
    this.auth = formBuilder.group({
      username: formBuilder.control('', Validators.required),
      password: formBuilder.control('', Validators.required)
    });
  }

  login(): void {
    this.authService.login(
      this.auth.get('username')?.value,
      this.auth.get('password')?.value
    ).pipe(catchError((httpErrorResponse: HttpErrorResponse) => {
      this.invalid = true;
      this.auth.valueChanges.subscribe(() => {
        if (this.invalid) {
          this.invalid = false;
        }
      });
      return of(httpErrorResponse);
    })).subscribe((httpResponse: HttpResponse<any>) => {
      const token = httpResponse.headers.get('Authorization');
      const userAgent = httpResponse.headers.get('User-Agent');
      if (token && userAgent) {
        localStorage.setItem('token', token);
        this.userService.findOneByUsername(userAgent)
          .subscribe((user: User) => {
            user.password = this.auth.get('password')?.value;
            localStorage.setItem('user', JSON.stringify(user));
            this.router.navigate(['/general']).then(() => {
              console.log('Login successful');
            });
          });
      }
    });
  }

}
