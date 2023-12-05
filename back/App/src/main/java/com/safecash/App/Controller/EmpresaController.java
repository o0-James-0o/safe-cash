package com.safecash.App.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.safecash.App.BO.EmpresaBO;
import com.safecash.App.Entity.Empresa;

@RestController
@RequestMapping(path="/empresa", produces = "application/json")
public class EmpresaController {
    @Autowired
    private EmpresaBO empresaBO;

    @GetMapping("/{idUsuario}")
    public Empresa getEmpresa(@PathVariable("idUsuario") Integer idUsuario) {
        return empresaBO.getEmpresa(idUsuario);
    }

    @PostMapping("")
    public Empresa setEmpresa(@RequestBody Empresa empresa) {
        return empresaBO.setEmpresa(empresa);
    }
}
