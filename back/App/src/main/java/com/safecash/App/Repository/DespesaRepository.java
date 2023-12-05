package com.safecash.App.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.safecash.App.Entity.Despesa;

public interface DespesaRepository extends CrudRepository<Despesa, Integer> {

    @Query(value = "SELECT * FROM despesa WHERE cod_empresa = :idEmpresa", nativeQuery = true)
    List<Despesa> getDespesas(Integer idEmpresa);
}
