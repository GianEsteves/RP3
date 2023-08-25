package com.multiverso.games.Models;

import java.math.BigDecimal;
import javax.persistence.*;

@Entity(name = "jogos")
public class Jogo {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String nome;

    @Column(nullable = false)
    private String descricao;

    @Column(nullable = false)
    private String genero;

    @Column(nullable = false)
    private String plataforma;

    @Column(nullable = false)
    private String desenvolvedor;

    @Column(nullable = false)
    private String dataLancamento;

    @Column(nullable = false)
    private BigDecimal preco;

    public Jogo() {
    }

    public Jogo(String nome, String descricao, String genero, String plataforma, String desenvolvedor,
            String dataLancamento, BigDecimal preco) {
        this.nome = nome;
        this.descricao = descricao;
        this.genero = genero;
        this.plataforma = plataforma;
        this.desenvolvedor = desenvolvedor;
        this.dataLancamento = dataLancamento;
        this.preco = preco;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public String getPlataforma() {
        return plataforma;
    }

    public void setPlataforma(String plataforma) {
        this.plataforma = plataforma;
    }

    public String getDesenvolvedor() {
        return desenvolvedor;
    }

    public void setDesenvolvedor(String desenvolvedor) {
        this.desenvolvedor = desenvolvedor;
    }

    public String getDataLancamento() {
        return dataLancamento;
    }

    public void setDataLancamento(String dataLancamento) {
        this.dataLancamento = dataLancamento;
    }

    public BigDecimal getPreco() {
        return preco;
    }

    public void setPreco(BigDecimal preco) {
        this.preco = preco;
    }

    @Override
    public String toString() {
        return "Jogo{" +
                "id=" + id +
                ", nome='" + nome + '\'' +
                ", descricao='" + descricao + '\'' +
                ", genero='" + genero + '\'' +
                ", plataforma='" + plataforma + '\'' +
                ", desenvolvedor='" + desenvolvedor + '\'' +
                ", dataLancamento=" + dataLancamento +
                ", preco=" + preco +
                '}';
    }
}
