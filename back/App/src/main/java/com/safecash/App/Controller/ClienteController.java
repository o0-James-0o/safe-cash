package com.safecash.App.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.safecash.App.BO.ClienteBO;
import com.safecash.App.Entity.Cliente;

@RestController
@RequestMapping(path="/cliente", produces = "application/json")
public class ClienteController {
    @Autowired
    private ClienteBO clienteBO;

    @GetMapping(path="/{cod_empresa}")
    public List<Cliente> getClientes(@PathVariable("cod_empresa") Integer cod_empresa) {
        return clienteBO.getClientes(cod_empresa);
    }

    @GetMapping(path="/melhor/{cod_empresa}")
    public Cliente getMelhorCliente(@PathVariable("cod_empresa") Integer cod_empresa) {
        return clienteBO.getMelhorCliente(cod_empresa);
    }

    @PostMapping(path="")
    public Cliente addCliente(@RequestBody Cliente cliente) {
        return clienteBO.addCliente(cliente);
    }
}
