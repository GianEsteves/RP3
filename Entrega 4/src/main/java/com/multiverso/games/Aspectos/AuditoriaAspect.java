package com.multiverso.games.Aspectos;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Arrays;


import com.multiverso.games.Models.HistoricoOperacoes;
import com.multiverso.games.Repositorios.HistoricoOperacoesRepository;
import com.multiverso.games.Dto.HistoricoOperacoesDto;
// ASPECTO AUDITORIA
@Aspect
@Component
public class AuditoriaAspect {

  private HistoricoOperacoesRepository historicoOperacoesRepository;

  @Autowired
  public AuditoriaAspect(HistoricoOperacoesRepository historicoOperacoesRepository) {
    this.historicoOperacoesRepository = historicoOperacoesRepository;
  }

  
  @Pointcut("execution(* com.multiverso.games.Controladores.JogoControlador.*(..))")
  public void jogoControllerMethods() {
  }

  @Pointcut("execution(* com.multiverso.games.Controladores.ClienteControlador.*(..))")
  public void clienteControllerMethods() {
  }

  @Pointcut("execution(* com.multiverso.games.Controladores.CadastroControlador.*(..))")
  public void cadastroControllerMethods() {
  }

  @Before("jogoControllerMethods() || clienteControllerMethods() || cadastroControllerMethods()")
  public void beforeControllerMethods(JoinPoint joinPoint) {
    String methodName = joinPoint.getSignature().getName();
    String timestamp = getCurrentTimestamp();
    String details = generateOperationDetails(joinPoint);

    HistoricoOperacoesDto historicoOperacoesDto = new HistoricoOperacoesDto(timestamp, methodName, details);
    HistoricoOperacoes historicoOperacoes = convertDTOToEntity(historicoOperacoesDto);
    historicoOperacoesRepository.save(historicoOperacoes);

    System.out.println("Antes de executar o método: " + methodName);
  }

  private String getCurrentTimestamp() {
    LocalDateTime now = LocalDateTime.now();
    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
    return now.format(formatter);
  }

  private String generateOperationDetails(JoinPoint joinPoint) {
    StringBuilder sb = new StringBuilder();
    sb.append("Detalhes da operação: ");
    sb.append("Classe: ").append(joinPoint.getTarget().getClass().getSimpleName());
    sb.append(", Método: ").append(joinPoint.getSignature().getName());
    sb.append(", Argumentos: ").append(Arrays.toString(joinPoint.getArgs()));
    return sb.toString();
  }

  private HistoricoOperacoes convertDTOToEntity(HistoricoOperacoesDto historicoOperacoesDto) {
    HistoricoOperacoes historicoOperacoes = new HistoricoOperacoes();
    historicoOperacoes.setDataHora(historicoOperacoesDto.getDataHora());
    historicoOperacoes.setNomeMetodo(historicoOperacoesDto.getNomeMetodo());
    historicoOperacoes.setDetalhes(historicoOperacoesDto.getDetalhes());
    return historicoOperacoes;
  }
}
