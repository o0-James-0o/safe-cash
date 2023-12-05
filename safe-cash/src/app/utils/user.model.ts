export class User {
    constructor(
        public cod_usuario: number,
        public login: string,
        public email: string,
        public senha: string,
        public admin?: Admin,
        public usrPadrao?: UsrPadrao
    ) { }
}

export class Admin {
    constructor(
        public cod_admin: number,
        public nivel_acesso: number,
        public permissao_especial: boolean
    ) { }
}

export class UsrPadrao {
    constructor(
        public cod_usuario: number,
        public departamento: string,
        public cargo: string
    ) { }
}