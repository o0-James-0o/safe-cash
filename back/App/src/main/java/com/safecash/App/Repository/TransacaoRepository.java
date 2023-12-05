package com.safecash.App.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.safecash.App.Entity.Transacao;

public interface TransacaoRepository extends CrudRepository<Transacao, Integer>{

    @Query(value = "SELECT * FROM transacao WHERE cod_empresa = :idEmpresa", nativeQuery = true)
    List<Transacao> getTransacoes(@Param("idEmpresa") Integer idEmpresa);
    
}
