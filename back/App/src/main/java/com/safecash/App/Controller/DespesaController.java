package com.safecash.App.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.safecash.App.BO.DespesaBO;
import com.safecash.App.Entity.Despesa;

@RestController
@RequestMapping(path="/despesa", produces = "application/json")
public class DespesaController {
    @Autowired
    private DespesaBO despesaBO;

    @GetMapping("/{idEmpresa}")
    public List<Despesa> getDespesas(@PathVariable("idEmpresa") Integer idEmpresa) {
        return despesaBO.getDespesas(idEmpresa);
    }

    @PostMapping("")
    public void setDespesa(@RequestBody Despesa despesa) {
        despesaBO.setDespesa(despesa);
    }
}
