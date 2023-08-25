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

import com.multiverso.games.Dto.JogoDto;
import com.multiverso.games.Models.Jogo;
import com.multiverso.games.Repositorios.JogoRepository;

import javax.validation.Valid;
import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping(value = "/jogos")
public class JogoControlador {

    @Autowired
    private JogoRepository jogoRepository;

    @GetMapping("/paginaInicial")
    public ModelAndView index() {
        List<Jogo> jogos = this.jogoRepository.findAll();
        ModelAndView mv = new ModelAndView("jogos/paginaInicial");
        mv.addObject("jogos", jogos);

        return mv;
    }

    @GetMapping("/novoJogo")
    public ModelAndView novoJogo(JogoDto requisicao) {
        ModelAndView mv = new ModelAndView("jogos/novoJogo");

        return mv;
    }

    @PostMapping("")
    public ModelAndView create(@Valid JogoDto requisicao, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            ModelAndView mv = new ModelAndView("jogos/novoJogo");
            return mv;
        } else {
            Jogo jogo = requisicao.toJogo();
            this.jogoRepository.save(jogo);

            return new ModelAndView("redirect:jogos/paginaInicial");
        }
    }

    @GetMapping("/{id}/editarJogo")
    public ModelAndView editarJogo(@PathVariable Long id, JogoDto requisicao) {
        Optional<Jogo> optional = this.jogoRepository.findById(id);
        if (optional.isPresent()) {
            Jogo jogo = optional.get();
            requisicao.fromJogo(jogo);

            ModelAndView mv = new ModelAndView("jogos/editarJogo");
            mv.addObject("jogoId", jogo.getId());

            return mv;

        } else {
            return this.retornaErroJogo("Jogo " + id + " não encontrado!");
        }
    }

    @PostMapping("/{id}")
    public ModelAndView atualizarJogo(@PathVariable Long id, @Valid JogoDto requisicao, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            ModelAndView mv = new ModelAndView("jogos/editarJogo");
            mv.addObject("jogoId", id);

            return mv;

        } else {
            Optional<Jogo> optional = this.jogoRepository.findById(id);
            if (optional.isPresent()) {
                Jogo jogo = requisicao.toJogo(optional.get());
                this.jogoRepository.save(jogo);

                return new ModelAndView("redirect:/jogos/paginaInicial");

            } else {
                return this.retornaErroJogo("Jogo " + id + " não encontrado!");
            }
        }
    }

    @GetMapping("/{id}/delete")
    public ModelAndView deletarJogo(@PathVariable Long id) {
        ModelAndView mv = new ModelAndView("redirect:/jogos/paginaInicial");

        try {
            this.jogoRepository.deleteById(id);
            mv.addObject("mensagem", "Jogo #" + id + " deletado com sucesso!");
            mv.addObject("erro", false);
        } catch (EmptyResultDataAccessException e) {
            mv = this.retornaErroJogo("Jogo " + id + " não encontrado no banco!");
        }

        return mv;
    }

    private ModelAndView retornaErroJogo(String msg) {
        ModelAndView mv = new ModelAndView("redirect:/jogos/paginaInicial");
        mv.addObject("mensagem", msg);
        mv.addObject("erro", true);
        return mv;
    }
}