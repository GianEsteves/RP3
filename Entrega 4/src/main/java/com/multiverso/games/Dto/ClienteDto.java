package com.multiverso.games.Dto;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import com.multiverso.games.Exe.ValidaEmail;
import com.multiverso.games.Exe.ValidaNascimento;
import com.multiverso.games.Models.Cliente;
import javax.validation.constraints.Email;

public class ClienteDto {
  
  @NotBlank
  @NotNull
  private String nome;

  @NotBlank
  @NotNull
  @Email
  @ValidaEmail
  private String email;

  @NotBlank
  @NotNull
  private String senha;

  @NotBlank
  @NotNull
  private String plataforma;

  @NotBlank
  @NotNull
  private String generoPreferido;

  @NotBlank
  @NotNull
  @ValidaNascimento
  private String dataNascimento;

  @NotBlank
  @NotNull
  private String endereco;

  public Cliente toUser() {
    Cliente user = new Cliente();
    user.setNome(this.nome);
    user.setEmail(this.email);
    user.setSenha(this.senha);
    user.setPlataforma(this.plataforma);
    user.setGeneroPreferido(this.generoPreferido);
    user.setDataNascimento(this.dataNascimento);
    user.setEndereco(this.endereco);

    return user;
  }

  public Cliente toUser(Cliente user) {
    user.setNome(this.nome);
    user.setEmail(this.email);
    user.setSenha(this.senha);
    user.setPlataforma(this.plataforma);
    user.setGeneroPreferido(this.generoPreferido);
    user.setDataNascimento(this.dataNascimento);
    user.setEndereco(this.endereco);

    return user;
  }

  public void fromUser(Cliente user) {
    this.nome = user.getNome();
    this.email = user.getEmail();
    this.senha = user.getSenha();
    this.plataforma = user.getPlataforma();
    this.generoPreferido = user.getGeneroPreferido();
    this.dataNascimento = user.getDataNascimento();
    this.endereco = user.getEndereco();
  }

  public String getnome() {
    return nome;
  }

  public void setnome(String nome) {
    this.nome = nome;
  }

  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public String getsenha() {
    return senha;
  }

  public void setsenha(String senha) {
    this.senha = senha;
  }

  public String getPlataforma() {
    return plataforma;
  }

  public void setPlataforma(String plataforma) {
    this.plataforma = plataforma;
  }

  public String getgeneroPreferido() {
    return generoPreferido;
  }

  public void setgeneroPreferido(String generoPreferido) {
    this.generoPreferido = generoPreferido;
  }

  public String getdataNascimento() {
    return dataNascimento;
  }

  public void setdataNascimento(String dataNascimento) {
    this.dataNascimento = dataNascimento;
  }

  public String getendereco() {
    return endereco;
  }

  public void setendereco(String endereco) {
    this.endereco = endereco;
  }

  @Override
  public String toString() {
    return "ClienteDto [nome=" + nome + ", email=" + email + ", senha=" + senha + ", plataforma=" + plataforma
        + ", generoPreferido=" + generoPreferido + ", dataNascimento=" + dataNascimento + ", endereco=" + endereco + "]";
  }  
}
