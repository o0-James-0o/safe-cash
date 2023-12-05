package com.safecash.App.BO;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.safecash.App.Entity.Transacao;
import com.safecash.App.Repository.TransacaoRepository;

@Service
public class TransacaoBO {
    @Autowired
    private TransacaoRepository transacaoRepository;

    public List<Transacao> getTransacoes(Integer idEmpresa) {
        try {
            return transacaoRepository.getTransacoes(idEmpresa);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public void setTransacao(Transacao transacao) {
        try {
            transacaoRepository.save(transacao);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
