package com.multiverso.games.Controladores;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.multiverso.games.Dto.ClienteDto;
import com.multiverso.games.Models.Cliente;
import com.multiverso.games.Repositorios.ClienteRepository;

import javax.validation.Valid;
import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping(value = "/Clientes/")
public class ClienteControlador {

  @Autowired
  private ClienteRepository clienteRepository;

  @GetMapping("/paginaInicial")
  public ModelAndView index() {
    List<Cliente> clientes = this.clienteRepository.findAll();
    ModelAndView mv = new ModelAndView("/Clientes/paginaInicial");
    mv.addObject("users", clientes);

    return mv;
  }

  @GetMapping("/novoCliente")
  public ModelAndView novoCliente(ClienteDto requisicao) {
    ModelAndView mv = new ModelAndView("/Clientes/novoCliente");

    return mv;
  }

  @PostMapping("/paginaInicial")
  public ModelAndView create(@Valid ClienteDto requisicao, BindingResult bindingResult) {
    if (bindingResult.hasErrors()) {
      ModelAndView mv = new ModelAndView("/Clientes/novoCliente");
      return mv;
    } else {
      Cliente cliente = requisicao.toUser();
      this.clienteRepository.save(cliente);

      return new ModelAndView("redirect:/Clientes/paginaInicial");
    }
  }

  @GetMapping("/{id}/editarCliente")
  public ModelAndView editarCliente(@PathVariable Long id, ClienteDto requisicao) {
    Optional<Cliente> optional = this.clienteRepository.findById(id);
    if (optional.isPresent()) {
      Cliente user = optional.get();
      requisicao.fromUser(user);
      ModelAndView mv = new ModelAndView("/Clientes/editarCliente");
      mv.addObject("user.id", user);
      return mv;
    } else {
      return retornaErroCliente("Cliente " + id + " não encontrado!");
    }
  }

  @PostMapping("/{id}")
  public ModelAndView atualizarCliente(@PathVariable Long id, @Valid ClienteDto requisicao,
      BindingResult bindingResult) {
    if (bindingResult.hasErrors()) {
      ModelAndView mv = new ModelAndView("/Clientes/editarCliente");
      mv.addObject("user.id", id);
      return mv;
    } else {
      Optional<Cliente> optional = this.clienteRepository.findById(id);
      if (optional.isPresent()) {
        Cliente user = requisicao.toUser(optional.get());
        this.clienteRepository.save(user);
        return new ModelAndView("redirect:/Clientes/paginaInicial");
      } else {
        return retornaErroCliente("Cliente" + id + " não encontrado!");
      }
    }
  }

  @GetMapping("/{userId}/deletar")
  public ModelAndView deletarCliente(@PathVariable Long userId) {
    ModelAndView mv = new ModelAndView("redirect:/Clientes/paginaInicial");
    try {
      clienteRepository.deleteById(userId);
      mv.addObject("mensagem", "Cliente " + userId + " deletado com sucesso!");
      mv.addObject("erro", false);
    } catch (EmptyResultDataAccessException e) {

    }
    return mv;
  }

  private ModelAndView retornaErroCliente(String msg) {
    ModelAndView mv = new ModelAndView("redirect:/Clientes/paginaInicial");
    mv.addObject("mensagem", msg);
    mv.addObject("erro", true);
    return mv;
  }
}