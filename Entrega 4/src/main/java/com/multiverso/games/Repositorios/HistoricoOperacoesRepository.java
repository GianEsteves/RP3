package com.multiverso.games.Repositorios;

import org.springframework.data.repository.CrudRepository;
import com.multiverso.games.Models.HistoricoOperacoes;

public interface HistoricoOperacoesRepository extends CrudRepository<HistoricoOperacoes, Long> {
  // Métodos adicionais do repositório, se houver
}
