export class Empresa {
    constructor(
        public cod_empresa: number,
        public cod_usuario: number,
        public cnpj: string,
        public nome: string,
        public segmento: string
    ) { }
}