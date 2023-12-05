package com.safecash.App.Entity;

import java.util.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
@Table(name = "transacao")
public class Transacao {
    @Id
    @GeneratedValue(strategy = jakarta.persistence.GenerationType.AUTO)
    private Integer cod_transacao;
    private Integer cod_empresa;
    private Date data;
    private Double valor;
    private String tipo;
    private String descricao;
}
