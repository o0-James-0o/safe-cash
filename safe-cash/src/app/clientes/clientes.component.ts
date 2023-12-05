import { Component, OnInit } from '@angular/core';
import { UserService } from '../utils/userService';
import { HttpClient } from '@angular/common/http';
import { User } from '../utils/user.model';
import { Empresa } from '../utils/empresa.model';

@Component({
  selector: 'app-clientes',
  templateUrl: './clientes.component.html',
  styleUrls: ['./clientes.component.css']
})
export class ClientesComponent implements OnInit {

  public clientes: any[] = [];

  public isLoadingClientes: boolean = true;

  public isLoadingMelhorCliente: boolean = true;

  public user: User | undefined;

  public displayedColumns: string[] = ['cod_cliente', 'nome', 'cpf', 'email', 'totalGasto'];

  public empresa: Empresa | undefined;

  public melhorCliente: any | undefined;

  constructor(private http: HttpClient, private userService: UserService) {
    this.user = this.userService.getUser();
    this.empresa = this.userService.getEmpresa();
  }
  ngOnInit(): void {
    this.isLoadingClientes = true;
    this.http.get('/api/cliente/' + this.empresa?.cod_empresa).subscribe((resposta: any) => {
      this.clientes = resposta;
      this.isLoadingClientes = false;
    });
    this.http.get('/api/cliente/melhor/' + this.empresa?.cod_empresa).subscribe((resposta: any) => {
      this.melhorCliente = resposta;
      this.isLoadingMelhorCliente = false;
    });
  }
}
