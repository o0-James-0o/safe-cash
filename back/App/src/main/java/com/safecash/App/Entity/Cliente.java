package com.safecash.App.Entity;

import com.safecash.App.Entity.CompositeKeys.Clientes;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.IdClass;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
@IdClass(Clientes.class)
public class Cliente {
    @Id
    @GeneratedValue(strategy = jakarta.persistence.GenerationType.AUTO)
    private Integer cod_cliente;
    @Id
    private Integer cod_empresa;
    private String nome;
    private String cpf;
    private String email;
    private Double totalGasto;
}
