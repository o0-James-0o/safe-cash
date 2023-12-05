import { HttpClient, HttpParams } from '@angular/common/http';
import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { UserService } from '../utils/userService';
import { User } from '../utils/user.model';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent {

  constructor(private http: HttpClient, private router: Router, private usrService: UserService) {
  }

  public changeView(signin: boolean) {
    const container = document.querySelector(".container");
    if (signin) {
      container?.classList.remove("sign-up-mode");
    } else {
      container?.classList.add("sign-up-mode");
    }
  }

  public signUp() {
    const email = (document as any).querySelector("#su-email")?.value;
    const password = (document as any).querySelector("#su-password")?.value;
    const username = (document as any).querySelector("#su-username")?.value;

    if (email == "" || password == "" || username == "") {
      alert("Please fill in all fields!");
      return;
    }

    const data = {
      email: email,
      senha: password,
      login: username
    };

    this.http.post("/api/usuario", data).subscribe(
      (response: any) => { alert("Account created successfully!") },
      (error: any) => { alert("An error occurred!") }
    );
  }

  public signIn() {
    const password = (document as any).querySelector("#si-senha")?.value;
    const username = (document as any).querySelector("#si-username")?.value;

    if (password == "" || username == "") {
      alert("Please fill in all fields!");
      return;
    }
    let requestParams = new HttpParams();
    requestParams = requestParams.append('login', username);
    requestParams = requestParams.append('senha', password);
    this.http.get("/api/usuario", { params: requestParams }).subscribe(
      (response: any) => { if (response) { alert("Login successful!");
      this.usrService.setUser(response);
      this.router.navigate(['/home']);
    } else { alert("Login failed!") } },
      (error: any) => { alert("An error occurred!") }
    );
    return false;
  }

}
