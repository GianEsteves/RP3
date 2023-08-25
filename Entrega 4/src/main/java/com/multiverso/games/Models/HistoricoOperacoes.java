package com.multiverso.games.Models;

import javax.persistence.*;

@Entity(name = "historico_operacoes")
public class HistoricoOperacoes {
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Long id;

  @Column(nullable = false)
  private String dataHora;

  @Column(nullable = false)
  private String nomeMetodo;

  @Column(nullable = false)
  private String detalhes;

  public HistoricoOperacoes() {
  }

  public HistoricoOperacoes(String dataHora, String nomeMetodo, String detalhes) {
    this.dataHora = dataHora;
    this.nomeMetodo = nomeMetodo;
    this.detalhes = detalhes;
  }

  public Long getId() {
    return id;
  }

  public String getDataHora() {
    return dataHora;
  }

  public void setDataHora(String dataHora) {
    this.dataHora = dataHora;
  }

  public String getNomeMetodo() {
    return nomeMetodo;
  }

  public void setNomeMetodo(String nomeMetodo) {
    this.nomeMetodo = nomeMetodo;
  }

  public String getDetalhes() {
    return detalhes;
  }

  public void setDetalhes(String detalhes) {
    this.detalhes = detalhes;
  }

  @Override
  public String toString() {
    return "HistoricoOperacoes [id=" + id + ", dataHora=" + dataHora + ", nomeMetodo=" + nomeMetodo + ", detalhes=" + detalhes + "]";
  }
}
