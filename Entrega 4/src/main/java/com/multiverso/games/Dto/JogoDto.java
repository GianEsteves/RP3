package com.multiverso.games.Dto;

import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import com.multiverso.games.Exe.ValidaDataAtual;
import com.multiverso.games.Models.Jogo;
import java.math.BigDecimal;

public class JogoDto {

    @NotBlank
    @NotNull
    private String nome;

    @NotBlank
    @NotNull
    private String descricao;

    @NotBlank
    @NotNull
    private String genero;

    @NotBlank
    @NotNull
    private String plataforma;

    @NotBlank
    @NotNull
    private String desenvolvedor;

    @NotBlank
    @NotNull
    @ValidaDataAtual
    private String dataLancamento;

    @NotNull
    @DecimalMin("0.0")
    private BigDecimal preco;

    public Jogo toJogo() {
        Jogo jogo = new Jogo();
        jogo.setNome(this.nome);
        jogo.setDescricao(this.descricao);
        jogo.setGenero(this.genero);
        jogo.setPlataforma(this.plataforma);
        jogo.setDesenvolvedor(this.desenvolvedor);
        jogo.setDataLancamento(this.dataLancamento);
        jogo.setPreco(this.preco);

        return jogo;
    }

    public Jogo toJogo(Jogo jogo) {
        jogo.setNome(this.nome);
        jogo.setDescricao(this.descricao);
        jogo.setGenero(this.genero);
        jogo.setPlataforma(this.plataforma);
        jogo.setDesenvolvedor(this.desenvolvedor);
        jogo.setDataLancamento(this.dataLancamento);
        jogo.setPreco(this.preco);

        return jogo;
    }

    public void fromJogo(Jogo jogo) {
        this.nome = jogo.getNome();
        this.descricao = jogo.getDescricao();
        this.genero = jogo.getGenero();
        this.plataforma = jogo.getPlataforma();
        this.desenvolvedor = jogo.getDesenvolvedor();
        this.dataLancamento = jogo.getDataLancamento();
        this.preco = jogo.getPreco();
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
        return "JogoDto{" +
                "nome='" + nome + '\'' +
                ", descricao='" + descricao + '\'' +
                ", genero='" + genero + '\'' +
                ", plataforma='" + plataforma + '\'' +
                ", desenvolvedor='" + desenvolvedor + '\'' +
                ", dataLancamento=" + dataLancamento +
                ", preco=" + preco +
                '}';
    }
}
