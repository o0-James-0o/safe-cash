package com.safecash.App.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.safecash.App.Entity.Cliente;
import com.safecash.App.Entity.CompositeKeys.Clientes;

public interface ClienteRepository extends CrudRepository<Cliente, Clientes> {

    @Query(value = "SELECT * FROM cliente WHERE cod_empresa = :cod_empresa", nativeQuery = true)
    List<Cliente> getClientes(Integer cod_empresa);

    @Query(value = "SELECT * FROM cliente WHERE cod_empresa = :cod_empresa ORDER BY total_gasto DESC LIMIT 1", nativeQuery = true)
    Cliente getMelhorCliente(Integer cod_empresa);
    
}
