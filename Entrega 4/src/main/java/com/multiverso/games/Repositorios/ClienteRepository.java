package com.multiverso.games.Repositorios;

import org.springframework.data.jpa.repository.JpaRepository;

import com.multiverso.games.Models.Cliente;

public interface ClienteRepository extends JpaRepository<Cliente, Long> {
  Cliente findByEmail(String email);
}