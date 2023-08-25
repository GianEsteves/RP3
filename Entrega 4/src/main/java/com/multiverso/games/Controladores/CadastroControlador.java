package com.multiverso.games.Controladores;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.multiverso.games.Dto.ClienteDto;
import com.multiverso.games.Models.Cliente;
import com.multiverso.games.Repositorios.ClienteRepository;

@Controller
public class CadastroControlador {

    @Autowired
    private ClienteRepository clienteRepository;

    @GetMapping("/")
    public String home() {
        return "paginaPrincipal";
    }

    @GetMapping("/menuAdm")
    public ModelAndView menuAdm(ClienteDto requisicao) {
        ModelAndView mv = new ModelAndView("menuAdm");
        return mv;
    }

    @GetMapping("/menuCliente")
    public ModelAndView menuCliente(ClienteDto requisicao) {
        ModelAndView mv = new ModelAndView("menuCliente");
        return mv;
    }

    @GetMapping("/paginaPrincipal")
    public ModelAndView paginaPrincipal(ClienteDto requisicao) {
        ModelAndView mv = new ModelAndView("paginaPrincipal");
        return mv;
    }

    @PostMapping("/login")
    public ModelAndView entradaUsuario(@RequestParam String username, @RequestParam String password) {
        Cliente user = clienteRepository.findByEmail(username);

        if (username.equals("Adm1") && password.equals("1234")) {
            return new ModelAndView("redirect:/menuAdm");
        } else if (user != null && user.getSenha().equals(password)) {
            return new ModelAndView("redirect:/menuCliente");
        } else {
            ModelAndView mv = new ModelAndView("paginaPrincipal");
            mv.addObject("error", "Senha ou nome de usuário inválidos");
            return mv;
        }
    }

}