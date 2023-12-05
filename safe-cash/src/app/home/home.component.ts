import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { UserService } from '../utils/userService';
import { User } from '../utils/user.model';
import { Empresa } from '../utils/empresa.model';
import { ModalEmpresaComponent } from '../modal-empresa/modal-empresa.component';
import { MatDialog } from '@angular/material/dialog';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit {

  public isLoadingTransacao: boolean = true;

  public isLoadingDespesas: boolean = true;

  public transacoes: any[] = [];

  public despesas: any[] = [];

  public user: User | undefined;

  public empresa: Empresa | undefined;

  public saida: number = 0;

  public entrada: number = 0;

  public saldo: number = 0;

  public displayedColumns: string[] = ['cod_transacao', 'data', 'descricao', 'tipo', 'valor'];

  public displayedColumnsDespesas: string[] = ['cod_despesa', 'tipo', 'nome', 'valor'];

  constructor(private http: HttpClient, private userService: UserService,
    public dialog: MatDialog) { }

  ngOnInit(): void {
    this.saida = 0;
    this.entrada = 0;
    this.saldo = 0;
    this.isLoadingTransacao = true;
    this.isLoadingDespesas = true;
    this.user = this.userService.getUser();
    this.http.get('/api/empresa/' + this.user?.cod_usuario).subscribe((resposta: any) => {
      this.empresa = resposta;
      if (this.empresa) {
        this.userService.setEmpresa(this.empresa);
        this.carregarTransacoes();
      } else {
        this.isLoadingTransacao = false;
        this.isLoadingDespesas = false;
      }
    });
  }

  private carregarTransacoes() {
    this.http.get('/api/transacao/' + this.empresa?.cod_empresa).subscribe((resposta: any) => {
      this.transacoes = resposta;
      this.isLoadingTransacao = false;
      this.calcularValores();
    });
    this.http.get('/api/despesa/' + this.empresa?.cod_empresa).subscribe((resposta: any) => {
      this.despesas = resposta;
      this.isLoadingDespesas = false;
      this.calcularValores();
    });

  }

  public registrarEmpresa() {
    let dialogRef = this.dialog.open(ModalEmpresaComponent, {
      height: '700px',
      width: '900px'
    });
    dialogRef.afterClosed().subscribe(result => {
      this.empresa = this.userService.getEmpresa();
    });
  }

  public calcularValores() {
    if (this.despesas) {
      for (let despesa of this.despesas) {
        this.saida += despesa.valor;
      }
    } else {
      this.saida = 0;
    }
    if (this.transacoes) {
      for (let transacao of this.transacoes) {
        this.entrada += transacao.valor;
      }
    } else {
      this.entrada = 0;
    }
    this.saldo = this.entrada - this.saida;
  }
}

