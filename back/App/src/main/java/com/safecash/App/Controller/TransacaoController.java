package com.safecash.App.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.safecash.App.BO.TransacaoBO;
import com.safecash.App.Entity.Transacao;

@RestController
@RequestMapping(path="/transacao", produces = "application/json")
public class TransacaoController {
    @Autowired
    private TransacaoBO transacaoBO;

    @GetMapping("/{idEmpresa}")
    public List<Transacao> getTransacoes(@PathVariable("idEmpresa") Integer idEmpresa) {
        return transacaoBO.getTransacoes(idEmpresa);
    }

    @PostMapping("")
    public void setTransacao(@RequestBody Transacao transacao) {
        transacaoBO.setTransacao(transacao);
    }
}
