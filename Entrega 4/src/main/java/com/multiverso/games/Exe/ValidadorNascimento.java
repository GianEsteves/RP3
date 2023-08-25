package com.multiverso.games.Exe;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;
import java.time.LocalDate;

public class ValidadorNascimento implements ConstraintValidator<ValidaNascimento, String> {
    @Override
    public boolean isValid(String dataNascimento, ConstraintValidatorContext context) {
        if (dataNascimento == null) {
            return true; // Permite valores nulos, você pode alterar o comportamento se necessário
        }

        try {
            LocalDate data = LocalDate.parse(dataNascimento);
            LocalDate dataAtual = LocalDate.now();

            // Aqui você pode definir sua lógica de validação
            // Neste exemplo, estamos verificando se a pessoa tem pelo menos 14 anos de idade
            LocalDate dataMinima = dataAtual.minusYears(14);
            return !data.isAfter(dataMinima);
        } catch (Exception e) {
            return false; // Retorna falso se a data não estiver no formato esperado
        }
    }
}