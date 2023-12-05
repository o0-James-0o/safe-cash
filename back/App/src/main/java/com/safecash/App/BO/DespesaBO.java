package com.safecash.App.BO;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.safecash.App.Entity.Despesa;
import com.safecash.App.Repository.DespesaRepository;

@Service
public class DespesaBO {
    @Autowired
    private DespesaRepository despesaRepository;

    public List<Despesa> getDespesas(Integer idEmpresa) {
        try {
            return despesaRepository.getDespesas(idEmpresa);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public void setDespesa(Despesa despesa) {
        try {
            despesaRepository.save(despesa);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
