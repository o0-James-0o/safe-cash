package com.safecash.App.BO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.safecash.App.Entity.Caixa;
import com.safecash.App.Repository.CaixaRepository;

@Service
public class CaixaBO {
    @Autowired
    private CaixaRepository caixaRepository;

    public Caixa getCaixa(Integer idEmpresa) {
        try {
            return caixaRepository.findByIdEmpresa(idEmpresa);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public void setCaixa(Caixa caixa) {
        try {
            caixaRepository.save(caixa);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public Caixa deleteCaixa(Caixa caixa) {
        try {
            caixaRepository.delete(caixa);
            return caixa;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public void deleteCaixaByEmpresaId(Integer empresaId) {
        try {
            caixaRepository.deleteByIdEmpresa(empresaId);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
