package com.multiverso.games.Exe;

import java.time.LocalDate;
import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class ValidadorAtual implements ConstraintValidator<ValidaDataAtual, String> {

    @Override
    public void initialize(ValidaDataAtual constraintAnnotation) {
    }

    @Override
    public boolean isValid(String value, ConstraintValidatorContext context) {
        if (value == null) {
            return true;
        }

        LocalDate today = LocalDate.now();
        LocalDate providedDate = LocalDate.parse(value);

        return !providedDate.isAfter(today);
    }
}
