package com.safecash.App.Repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.safecash.App.Entity.Caixa;

public interface CaixaRepository extends CrudRepository<Caixa, Integer> {

    @Query(value = "SELECT * FROM caixa WHERE cod_empresa =:idEmpresa", nativeQuery = true)
    public Caixa findByIdEmpresa(@Param("idEmpresa") Integer idEmpresa);

    @Query(value = "DELETE FROM caixa WHERE cod_empresa =:idEmpresa", nativeQuery = true)
    public void deleteByIdEmpresa(@Param("idEmpresa") Integer empresaId);
    
}
