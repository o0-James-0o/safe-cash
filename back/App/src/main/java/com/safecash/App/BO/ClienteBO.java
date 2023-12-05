package com.safecash.App.BO;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.safecash.App.Entity.Cliente;
import com.safecash.App.Repository.ClienteRepository;

@Service
public class ClienteBO {
    @Autowired
    private ClienteRepository clienteRepository;

    public List<Cliente> getClientes(Integer cod_empresa) {
        try {
            return clienteRepository.getClientes(cod_empresa);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public Cliente getMelhorCliente(Integer cod_empresa) {
        return clienteRepository.getMelhorCliente(cod_empresa);
    }

    public Cliente addCliente(Cliente cliente) {
        return clienteRepository.save(cliente);
    }
}
