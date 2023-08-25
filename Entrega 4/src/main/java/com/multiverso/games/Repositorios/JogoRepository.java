package com.multiverso.games.Repositorios;

import org.springframework.data.jpa.repository.JpaRepository;

import com.multiverso.games.Models.Jogo;

public interface JogoRepository extends JpaRepository<Jogo, Long> {
    Jogo findByNome(String nome);
}
