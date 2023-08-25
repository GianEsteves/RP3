package com.multiverso.games.Models;

import javax.persistence.*;

@Entity(name = "clientes")
public class Cliente {
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Long id;

  @Column(nullable = false)
  private String nome;

  @Column(nullable = false, unique = true)
  private String email;

  @Column(nullable = false)
  private String senha;

  @Column(nullable = false)
  private String plataforma;

  @Column(nullable = false)
  private String generoPreferido;

  @Column(nullable = false)
  private String dataNascimento;

  @Column(nullable = false)
  private String endereco;

  public Cliente() {
  }

  public Cliente(String nome, String email, String senha, String dataNascimento,
      String plataforma, String generoPreferido, String endereco) {
    this.nome = nome;
    this.email = email;
    this.senha = senha;
    this.dataNascimento = dataNascimento;
    this.plataforma = plataforma;
    this.generoPreferido = generoPreferido;
    this.endereco = endereco;
  }

  public Long getId() {
    return id;
  }

  public String getNome() {
    return nome;
  }

  public void setNome(String nome) {
    this.nome = nome;
  }

  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public String getSenha() {
    return senha;
  }

  public void setSenha(String senha) {
    this.senha = senha;
  }

  public String getPlataforma() {
    return plataforma;
  }

  public void setPlataforma(String plataforma) {
    this.plataforma = plataforma;
  }

  public String getGeneroPreferido() {
    return generoPreferido;
  }

  public void setGeneroPreferido(String generoPreferido) {
    this.generoPreferido = generoPreferido;
  }

  public String getDataNascimento() {
    return dataNascimento;
  }

  public void setDataNascimento(String dataNascimento) {
    this.dataNascimento = dataNascimento;
  }

  public String getEndereco() {
    return endereco;
  }

  public void setEndereco(String endereco) {
    this.endereco = endereco;
  }

  @Override
  public String toString() {
    return "Cliente [id=" + id + ", nome=" + nome + ", email=" + email + ", senha=" + senha + ", plataforma="
        + plataforma + ", generoPreferido=" + generoPreferido + ", dataNascimento=" + dataNascimento + ", endereco="
        + endereco + "]";
  }
}
