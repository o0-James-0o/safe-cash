package com.safecash.App.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.safecash.App.BO.CaixaBO;
import com.safecash.App.Entity.Caixa;

@RestController
@RequestMapping(path="/caixa", produces = "application/json")
public class CaixaController {
    @Autowired
    private CaixaBO caixaBO;

    @GetMapping("/{idEmpresa}")
    public Caixa getCaixa(@PathVariable("idEmpresa") Integer idEmpresa) {
        return caixaBO.getCaixa(idEmpresa);
    }

    @PostMapping("")
    public void setCaixa(@RequestBody Caixa caixa) {
        caixaBO.setCaixa(caixa);
    }
}
