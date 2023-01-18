export interface SignInMethod {
  name: string;
  icon: string;
}

export class AuthConstant {

  static signInMethods: SignInMethod[] = [{
    name: 'Google',
    icon: 'google'
  }, {
    name: 'Microsoft',
    icon: 'microsoft'
  }, {
    name: 'Github',
    icon: 'github'
  }, {
    name: 'Facebook',
    icon: 'facebook'
  }];

}
