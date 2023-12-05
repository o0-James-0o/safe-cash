import { Empresa } from "./empresa.model";
import { User } from "./user.model";


export class UserService {
    private user: User | undefined;

    private empresa: Empresa | undefined;

    constructor() { }

    public getUser(): User | undefined {
        return this.user;
    }

    public setUser(user: User) {
        this.user = user;
    }

    public getEmpresa(): Empresa | undefined {
        return this.empresa;
    }

    public setEmpresa(empresa: Empresa) {
        this.empresa = empresa;
    }
}