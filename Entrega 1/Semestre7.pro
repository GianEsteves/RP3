/* Fatos */
/* Declaração dos Professores, a carga horária minima e suas prefêrencias em todas as matérias dos semestres ímpares */
/* Parte de todos */
professores('Professor 1',  8, [5,5,5,5,5,5,5,5,5,2,5,2,5,5,2,1] ).
professores('Professor 2',  8, [4,5,5,4,5,5,3,5,5,1,1,2,5,5,2,2] ).
professores('Professor 3',  8, [5,5,5,5,5,5,5,5,5,3,5,5,1,5,1,1] ).
professores('Professor 4',  8, [5,5,5,5,5,5,5,3,5,1,1,1,5,4,4,5] ).
professores('Professor 5',  8, [5,5,1,4,3,5,2,4,4,1,5,3,5,5,4,4] ).
professores('Professor 6',  8, [5,5,4,4,3,4,1,5,1,3,5,3,5,5,5,5] ).
professores('Professor 7',  8, [5,5,5,5,3,5,5,5,5,1,1,2,5,5,5,5] ).
professores('Professor 8',  8, [5,5,5,5,5,5,5,5,5,1,1,1,4,3,1,4] ).
professores('Professor 9',  8, [1,5,1,1,5,5,3,5,5,5,5,5,5,5,5,5] ).
professores('Professor 10', 8, [5,5,5,3,5,5,4,4,5,3,5,3,5,2,5,5] ).
professores('Professor 11', 8, [1,5,5,5,3,3,1,5,3,5,5,5,5,5,5,5] ).
professores('Professor 12', 8, [5,5,5,3,1,3,2,3,1,1,5,2,4,5,5,5] ).
professores('Professor 13', 8, [5,5,5,5,1,4,1,4,2,2,5,3,5,5,5,5] ).
professores('Professor 14', 8, [5,5,3,5,2,5,2,4,4,1,5,1,5,5,5,5] ).
professores('Professor 15', 8, [5,5,5,5,1,1,1,1,1,3,5,3,5,5,5,5] ).
professores('Professor 16', 8, [5,5,5,5,5,5,5,5,5,5,5,5,1,5,1,1] ).
professores('Professor 17', 8, [3,5,5,5,2,1,1,3,3,5,5,5,4,5,4,5] ).
professores('Professor 18', 8, [5,5,5,5,5,5,5,5,5,1,5,1,5,5,5,5] ).
professores('Professor 19', 8, [5,5,5,5,5,5,5,5,5,1,5,1,5,5,3,5] ).
professores('Professor 20', 8, [5,5,5,5,2,5,1,2,3,1,5,3,5,5,5,4] ).
professores('Professor 21', 8, [5,5,5,5,4,4,4,4,4,1,3,2,5,1,5,5] ).
professores('Professor 22', 8, [3,5,4,2,2,3,1,5,1,4,5,4,5,4,5,5] ).


/* Declaração dos dias e horários da semana que poderam vir a ter */
/* Parte de todos */
dia('Segunda-feira','18:30-20:30').
dia('Segunda-feira','20:30-22:30').

dia('Terça-feira','18:30-20:30').
dia('Terça-feira','20:30-22:30').

dia('Quarta-feira','18:30-20:30').
dia('Quarta-feira','20:30-22:30').

dia('Quinta-feira','18:30-20:30').
dia('Quinta-feira','20:30-22:30').

dia('Sexta-feira','18:30-20:30').
dia('Sexta-feira','20:30-22:30').

/* Declaração das disciplinas do sétimo semestre, carga horária miníma e seus créditos */
/* Parte do meu semestre */
disciplina('Engenharia Econômica',30,2).
disciplina('Ética e Legislação em Computação',30,2).
disciplina('Trabalho de Conclusão de Curso I',120,8).
disciplina('CCCGs',120,8).

/* Declararação dos Professores com as disciplinas do semestre, suas preferências nas disciplinas e a carga horária miníma */
/* Como fazer com o TTC e CCCGs que não tem preferência? Colocar 5  */
/* Parte do meu semestre */
professor('professor1', ['Engenharia Econômica', 'Ética e Legislação em Computação', 'Trabalho de Conclusão de Curso I','CCCGs'], [5,5,5,5], 8).
professor('professor2', ['Engenharia Econômica', 'Ética e Legislação em Computação', 'Trabalho de Conclusão de Curso I','CCCGs'], [5,5,5,5], 8).
professor('professor3', ['Engenharia Econômica', 'Ética e Legislação em Computação', 'Trabalho de Conclusão de Curso I','CCCGs'], [5,5,5,5], 8).
professor('professor4', ['Engenharia Econômica', 'Ética e Legislação em Computação', 'Trabalho de Conclusão de Curso I','CCCGs'], [5,5,5,5], 8).
professor('professor5', ['Engenharia Econômica', 'Ética e Legislação em Computação', 'Trabalho de Conclusão de Curso I','CCCGs'], [5,1,5,5], 8).
professor('professor6', ['Engenharia Econômica', 'Ética e Legislação em Computação', 'Trabalho de Conclusão de Curso I','CCCGs'], [5,4,5,5], 8).
professor('professor7', ['Engenharia Econômica', 'Ética e Legislação em Computação', 'Trabalho de Conclusão de Curso I','CCCGs'], [5,5,5,5], 8).
professor('professor8', ['Engenharia Econômica', 'Ética e Legislação em Computação', 'Trabalho de Conclusão de Curso I','CCCGs'], [5,5,5,5], 8).
professor('professor9', ['Engenharia Econômica', 'Ética e Legislação em Computação', 'Trabalho de Conclusão de Curso I','CCCGs'], [5,1,5,5], 8).
professor('professor10', ['Engenharia Econômica', 'Ética e Legislação em Computação', 'Trabalho de Conclusão de Curso I','CCCGs'], [5,5,5,5], 8).
professor('professor11', ['Engenharia Econômica', 'Ética e Legislação em Computação', 'Trabalho de Conclusão de Curso I','CCCGs'], [5,5,5,5], 8).
professor('professor12', ['Engenharia Econômica', 'Ética e Legislação em Computação', 'Trabalho de Conclusão de Curso I','CCCGs'], [5,5,5,5], 8).
professor('professor13', ['Engenharia Econômica', 'Ética e Legislação em Computação', 'Trabalho de Conclusão de Curso I','CCCGs'], [5,5,5,5], 8).
professor('professor14', ['Engenharia Econômica', 'Ética e Legislação em Computação', 'Trabalho de Conclusão de Curso I','CCCGs'], [5,3,5,5], 8).
professor('professor15', ['Engenharia Econômica', 'Ética e Legislação em Computação', 'Trabalho de Conclusão de Curso I','CCCGs'], [5,5,5,5], 8).
professor('professor16', ['Engenharia Econômica', 'Ética e Legislação em Computação', 'Trabalho de Conclusão de Curso I','CCCGs'], [5,5,5,5], 8).
professor('professor18', ['Engenharia Econômica', 'Ética e Legislação em Computação', 'Trabalho de Conclusão de Curso I','CCCGs'], [5,5,5,5], 8).
professor('professor19', ['Engenharia Econômica', 'Ética e Legislação em Computação', 'Trabalho de Conclusão de Curso I','CCCGs'], [5,5,5,5], 8).
professor('professor20', ['Engenharia Econômica', 'Ética e Legislação em Computação', 'Trabalho de Conclusão de Curso I','CCCGs'], [5,5,5,5], 8).
professor('professor21', ['Engenharia Econômica', 'Ética e Legislação em Computação', 'Trabalho de Conclusão de Curso I','CCCGs'], [5,5,5,5], 8).
professor('professor22', ['Engenharia Econômica', 'Ética e Legislação em Computação', 'Trabalho de Conclusão de Curso I','CCCGs'], [5,4,5,5], 8).



