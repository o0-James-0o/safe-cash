package com.safecash.App.Repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.safecash.App.Entity.Empresa;

public interface EmpresaRepository extends CrudRepository<Empresa, Integer> {

    @Query(value = "SELECT * FROM empresa WHERE cod_usuario = :idUsuario", nativeQuery = true)
    Empresa getEmpresa(@Param("idUsuario") Integer idUsuario);
    
}
