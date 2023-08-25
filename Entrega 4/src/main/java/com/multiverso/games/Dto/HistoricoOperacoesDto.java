package com.multiverso.games.Dto;

public class HistoricoOperacoesDto {
  private String dataHora;
  private String nomeMetodo;
  private String detalhes;

  public HistoricoOperacoesDto() {
  }

  public HistoricoOperacoesDto(String dataHora, String nomeMetodo, String detalhes) {
    this.dataHora = dataHora;
    this.nomeMetodo = nomeMetodo;
    this.detalhes = detalhes;
  }

  // Getters e setters

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
}
