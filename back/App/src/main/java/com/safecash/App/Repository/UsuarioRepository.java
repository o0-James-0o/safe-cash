package com.safecash.App.Repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.safecash.App.Entity.Usuario;

public interface UsuarioRepository extends CrudRepository<Usuario, Integer>{

    @Query(value = "SELECT * FROM usuario WHERE login = :login", nativeQuery = true)
    Usuario getUsuario(@Param("login") String login);
}
