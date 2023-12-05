package com.safecash.App.BO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.safecash.App.Entity.Empresa;
import com.safecash.App.Repository.EmpresaRepository;

@Service
public class EmpresaBO {
    @Autowired
    private EmpresaRepository empresaRepository;

    public Empresa getEmpresa(Integer idUsuario) {
        try {
            return empresaRepository.getEmpresa(idUsuario);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public Empresa setEmpresa(Empresa empresa) {
        try {
            return empresaRepository.save(empresa);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
    
}
