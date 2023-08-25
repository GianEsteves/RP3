package com.multiverso.games.Exe;

import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.*;

@Documented
@Constraint(validatedBy = ValidadorAtual.class)
@Target({ElementType.FIELD})
@Retention(RetentionPolicy.RUNTIME)
public @interface ValidaDataAtual {
    String message() default "Data inválida";

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};
}

