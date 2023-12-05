import { HttpClient } from '@angular/common/http';
import { Component } from '@angular/core';
import { UserService } from '../utils/userService';
import { User } from '../utils/user.model';
import { MatDialogRef } from '@angular/material/dialog';
import { Empresa } from '../utils/empresa.model';

@Component({
  selector: 'app-modal-empresa',
  templateUrl: './modal-empresa.component.html',
  styleUrls: ['./modal-empresa.component.css']
})
export class ModalEmpresaComponent {

  private user: User | undefined;

  constructor(private http: HttpClient, private usrService: UserService,
    public dialogRef: MatDialogRef<ModalEmpresaComponent>) {
    this.user = usrService.getUser();
  }

  public cadastrar() {
    let nome = (<HTMLInputElement>document.getElementById("companyName")).value;
    let cnpj = (<HTMLInputElement>document.getElementById("companyCnpj")).value;
    let segmento = (<HTMLInputElement>document.getElementById("companySegment")).value;
    this.http.post('/api/empresa', {
      nome: nome,
      cnpj: cnpj,
      segmento: segmento,
      cod_usuario: this.user?.cod_usuario
    }).subscribe((data) => {
      this.usrService.setEmpresa(data as Empresa);
      this.dialogRef.close();
    });
    return false;
  }
}
