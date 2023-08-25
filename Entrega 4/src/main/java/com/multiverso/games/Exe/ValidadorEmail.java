package com.multiverso.games.Exe;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.multiverso.games.Models.Cliente;
import com.multiverso.games.Repositorios.ClienteRepository;

@Component
public class ValidadorEmail implements ConstraintValidator<ValidaEmail, String> {

    @Autowired
    private ClienteRepository clienteRepository;

    @Override
    public void initialize(ValidaEmail constraintAnnotation) {
    }

    @Override
    public boolean isValid(String email, ConstraintValidatorContext context) {
        if (email == null || email.isEmpty()) {
            return true; // Permite campos de e-mail vazios, se necessário
        }
        // Verifica se o e-mail já existe no banco de dados
        Cliente cliente = clienteRepository.findByEmail(email);
        if (cliente != null) {
            return false; // E-mail já existe, a validação falha
        }

        return true; // E-mail válido
    }

}
