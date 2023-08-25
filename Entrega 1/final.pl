%professor
professor('Professor 1').
professor('Professor 2').
professor('Professor 3').
professor('Professor 4').
professor('Professor 5').
professor('Professor 6').
professor('Professor 7').
professor('Professor 8').
professor('Professor 9').
professor('Professor 10').
professor('Professor 11').
professor('Professor 12').
professor('Professor 13').
professor('Professor 14').
professor('Professor 15').
professor('Professor 16').
professor('Professor 17').
professor('Professor 18').
professor('Professor 19').
professor('Professor 20').
professor('Professor 21').
professor('Professor 22').

/*Matérias do primeiro semestre, carga horária e créditos*/
disciplina('Algoritmos e Programação',120,8).
disciplina('Lógica Matemática',60,4).
disciplina('Matemática Discreta',60,4).
disciplina('Resolução de Problemas I',120,8).

% disciplina | carga horaria | creditos semanais e hrs semanais  |
disciplina('RP3', 60, 4).
disciplina('Analise e Projeto de Software',60, 4).
disciplina('Linguagens Formais', 60, 4).
disciplina('Estrutura de Dados', 60, 4).
disciplina('Inovacao e Criatividade', 30, 2).
disciplina('Arquitetura e Organização de Computadores', 30, 2).

/*Matérias do primeiro semestre, carga horária e créditos*/
disciplina('RedeComput',60,4).
disciplina('MedAnalise',60,4).
disciplina('AdmEmp',60,4).
disciplina('RPV',120,8).
disciplina('CCCGs',60,4).

% Declaração das disciplinas do sétimo semestre, carga horária miníma e seus créditos */
disciplina('Engenharia Econômica',30,2).
disciplina('Ética e Legislação em Computação',30,2).
disciplina('Trabalho de Conclusão de Curso I',120,8).
disciplina('CCCGs',120,8).

% dias da semana com o inico e fim a cada 2 credito 
dia('Segunda-feira','18:30', '20:30', 2).
dia('Segunda-feira','20:30', '22:20', 2).

dia('Terça-feira','18:30', '20:30', 2).
dia('Terça-feira','20:30', '22:20', 2).

dia('Quarta-feira','18:30', '20:30', 2).
dia('Quarta-feira','20:30', '22:20', 2).

dia('Quinta-feira','18:30', '20:30', 2).
dia('Quinta-feira','20:30', '22:20', 2).

dia('Sexta-feira','18:30', '20:30', 2).
dia('Sexta-feira','20:30', '22:20', 2).

preferencia(professor('Professor 1'), disciplina('Algoritmos e Programação',_,_), 2).
preferencia(professor('Professor 1'), disciplina('Lógica Matemática',_,_), 2).
preferencia(professor('Professor 1'), disciplina('Matemática Discreta',_,_), 1).
preferencia(professor('Professor 1'), disciplina('Resolução de Problemas I',_,_), 5).
preferencia(professor('Professor 1'), disciplina('Resolução de Problemas I',_,_), 5).
preferencia(professor('Professor 1'), disciplina('RP3',_,_), 5).
preferencia(professor('Professor 1'), disciplina('Analise e Projeto de Software',_,_), 5).
preferencia(professor('Professor 1'), disciplina('Linguagens Formai',_,_), 5).
preferencia(professor('Professor 1'), disciplina('Estrutura de Dados',_,_), 2).
preferencia(professor('Professor 1'), disciplina('Inovacao e Criatividade',_,_), 5).
preferencia(professor('Professor 1'), disciplina('Arquitetura e Organização de Computadores',_,_), 1).
preferencia(professor('Professor 1'), disciplina('RedeComput',_,_), 5).
preferencia(professor('Professor 1'), disciplina('MedAnalise',_,_), 5).
preferencia(professor('Professor 1'), disciplina('AdmEmp',_,_), 5).
preferencia(professor('Professor 1'), disciplina('RPV',_,_), 5).
preferencia(professor('Professor 1'), disciplina('CCCGs',_,_), 5).
preferencia(professor('Professor 1'), disciplina('Engenharia Econômica',_,_), 5).
preferencia(professor('Professor 1'), disciplina('Ética e Legislação em Computação',_,_), 5).
preferencia(professor('Professor 1'), disciplina('Trabalho de Conclusão de Curso I',_,_), 5).
preferencia(professor('Professor 1'), disciplina('CCCGs',_,_), 5).

preferencia(professor('Professor 2'), disciplina('Algoritmos e Programação',_,_), 1).
preferencia(professor('Professor 2'), disciplina('Lógica Matemática',_,_), 2).
preferencia(professor('Professor 2'), disciplina('Matemática Discreta',_,_), 2).
preferencia(professor('Professor 2'), disciplina('Resolução de Problemas I',_,_), 3).
preferencia(professor('Professor 2'), disciplina('RP3',_,_), 5).
preferencia(professor('Professor 2'), disciplina('Analise e Projeto de Software',_,_), 5).
preferencia(professor('Professor 2'), disciplina('Linguagens Formai',_,_), 5).
preferencia(professor('Professor 2'), disciplina('Estrutura de Dados',_,_), 2).
preferencia(professor('Professor 2'), disciplina('Inovacao e Criatividade',_,_), 4).
preferencia(professor('Professor 2'), disciplina('Arquitetura e Organização de Computadores',_,_), 1).
preferencia(professor('Professor 2'), disciplina('RedeComput',_,_), 5).
preferencia(professor('Professor 2'), disciplina('MedAnalise',_,_), 5).
preferencia(professor('Professor 2'), disciplina('AdmEmp',_,_), 5).
preferencia(professor('Professor 2'), disciplina('RPV',_,_), 5).
preferencia(professor('Professor 2'), disciplina('CCCGs',_,_), 5).
preferencia(professor('Professor 2'), disciplina('Engenharia Econômica',_,_), 5).
preferencia(professor('Professor 2'), disciplina('Ética e Legislação em Computação',_,_), 5).
preferencia(professor('Professor 2'), disciplina('Trabalho de Conclusão de Curso I',_,_), 5).
preferencia(professor('Professor 2'), disciplina('CCCGs',_,_), 5).

preferencia(professor('Professor 3'), disciplina('Algoritmos e Programação',_,_), 1).
preferencia(professor('Professor 3'), disciplina('Lógica Matemática',_,_), 4).
preferencia(professor('Professor 3'), disciplina('Matemática Discreta',_,_), 5).
preferencia(professor('Professor 3'), disciplina('Resolução de Problemas I',_,_), 5).
preferencia(professor('Professor 3'), disciplina('RP3',_,_), 5).
preferencia(professor('Professor 3'), disciplina('Analise e Projeto de Software',_,_), 5).
preferencia(professor('Professor 3'), disciplina('Linguagens Formai',_,_), 5).
preferencia(professor('Professor 3'), disciplina('Estrutura de Dados',_,_), 1).
preferencia(professor('Professor 3'), disciplina('Inovacao e Criatividade',_,_), 5).
preferencia(professor('Professor 3'), disciplina('Arquitetura e Organização de Computadores',_,_), 5).
preferencia(professor('Professor 3'), disciplina('RedeComput',_,_), 5).
preferencia(professor('Professor 3'), disciplina('MedAnalise',_,_), 5).
preferencia(professor('Professor 3'), disciplina('AdmEmp',_,_), 5).
preferencia(professor('Professor 3'), disciplina('RPV',_,_), 5).
preferencia(professor('Professor 3'), disciplina('CCCGs',_,_), 5).
preferencia(professor('Professor 3'), disciplina('Engenharia Econômica',_,_), 5).
preferencia(professor('Professor 3'), disciplina('Ética e Legislação em Computação',_,_), 5).
preferencia(professor('Professor 3'), disciplina('Trabalho de Conclusão de Curso I',_,_), 5).
preferencia(professor('Professor 3'), disciplina('CCCGs',_,_), 5).

preferencia(professor('Professor 4'), disciplina('Algoritmos e Programação',_,_), 1).
preferencia(professor('Professor 4'), disciplina('Lógica Matemática',_,_), 4).
preferencia(professor('Professor 4'), disciplina('Matemática Discreta',_,_), 5).
preferencia(professor('Professor 4'), disciplina('Resolução de Problemas I',_,_), 5).
preferencia(professor('Professor 4'), disciplina('RP3',_,_), 3).
preferencia(professor('Professor 4'), disciplina('Analise e Projeto de Software',_,_), 5).
preferencia(professor('Professor 4'), disciplina('Linguagens Formai',_,_), 5).
preferencia(professor('Professor 4'), disciplina('Estrutura de Dados',_,_), 1).
preferencia(professor('Professor 4'), disciplina('Inovacao e Criatividade',_,_), 5).
preferencia(professor('Professor 4'), disciplina('Arquitetura e Organização de Computadores',_,_), 5).
preferencia(professor('Professor 4'), disciplina('RedeComput',_,_), 5).
preferencia(professor('Professor 4'), disciplina('MedAnalise',_,_), 5).
preferencia(professor('Professor 4'), disciplina('AdmEmp',_,_), 5).
preferencia(professor('Professor 4'), disciplina('RPV',_,_), 5).
preferencia(professor('Professor 4'), disciplina('CCCGs',_,_), 5).
preferencia(professor('Professor 4'), disciplina('Engenharia Econômica',_,_), 5).
preferencia(professor('Professor 4'), disciplina('Ética e Legislação em Computação',_,_), 5).
preferencia(professor('Professor 4'), disciplina('Trabalho de Conclusão de Curso I',_,_), 5).
preferencia(professor('Professor 4'), disciplina('CCCGs',_,_), 5).

preferencia(professor('Professor 5'), disciplina('Algoritmos e Programação',_,_), 1).
preferencia(professor('Professor 5'), disciplina('Lógica Matemática',_,_), 4).
preferencia(professor('Professor 5'), disciplina('Matemática Discreta',_,_), 4).
preferencia(professor('Professor 5'), disciplina('Resolução de Problemas I',_,_), 2).
preferencia(professor('Professor 5'), disciplina('RP3',_,_), 4).
preferencia(professor('Professor 5'), disciplina('Analise e Projeto de Software',_,_), 3).
preferencia(professor('Professor 5'), disciplina('Linguagens Formai',_,_), 5).
preferencia(professor('Professor 5'), disciplina('Estrutura de Dados',_,_), 3).
preferencia(professor('Professor 5'), disciplina('Inovacao e Criatividade',_,_), 4).
preferencia(professor('Professor 5'), disciplina('Arquitetura e Organização de Computadores',_,_), 1).
preferencia(professor('Professor 5'), disciplina('RedeComput',_,_), 5).
preferencia(professor('Professor 5'), disciplina('MedAnalise',_,_), 5).
preferencia(professor('Professor 5'), disciplina('AdmEmp',_,_), 5).
preferencia(professor('Professor 5'), disciplina('RPV',_,_), 5).
preferencia(professor('Professor 5'), disciplina('CCCGs',_,_), 5).
preferencia(professor('Professor 5'), disciplina('Engenharia Econômica',_,_), 5).
preferencia(professor('Professor 5'), disciplina('Ética e Legislação em Computação',_,_), 1).
preferencia(professor('Professor 5'), disciplina('Trabalho de Conclusão de Curso I',_,_), 5).
preferencia(professor('Professor 5'), disciplina('CCCGs',_,_), 5).

preferencia(professor('Professor 6'), disciplina('Algoritmos e Programação',_,_), 3).
preferencia(professor('Professor 6'), disciplina('Lógica Matemática',_,_), 5).
preferencia(professor('Professor 6'), disciplina('Matemática Discreta',_,_), 5).
preferencia(professor('Professor 6'), disciplina('Resolução de Problemas I',_,_), 1).
preferencia(professor('Professor 6'), disciplina('RP3',_,_), 5).
preferencia(professor('Professor 6'), disciplina('Analise e Projeto de Software',_,_),03 ).
preferencia(professor('Professor 6'), disciplina('Linguagens Formai',_,_), 5).
preferencia(professor('Professor 6'), disciplina('Estrutura de Dados',_,_), 3).
preferencia(professor('Professor 6'), disciplina('Inovacao e Criatividade',_,_), 4).
preferencia(professor('Professor 6'), disciplina('Arquitetura e Organização de Computadores',_,_), 5).
preferencia(professor('Professor 6'), disciplina('RedeComput',_,_), 5).
preferencia(professor('Professor 6'), disciplina('MedAnalise',_,_), 5).
preferencia(professor('Professor 6'), disciplina('AdmEmp',_,_), 5).
preferencia(professor('Professor 6'), disciplina('RPV',_,_), 1).
preferencia(professor('Professor 6'), disciplina('CCCGs',_,_), 5).
preferencia(professor('Professor 6'), disciplina('Engenharia Econômica',_,_), 5).
preferencia(professor('Professor 6'), disciplina('Ética e Legislação em Computação',_,_), 5).
preferencia(professor('Professor 6'), disciplina('Trabalho de Conclusão de Curso I',_,_), 5).
preferencia(professor('Professor 6'), disciplina('CCCGs',_,_), 5).

preferencia(professor('Professor 7'), disciplina('Algoritmos e Programação',_,_), 1).
preferencia(professor('Professor 7'), disciplina('Lógica Matemática',_,_), 4).
preferencia(professor('Professor 7'), disciplina('Matemática Discreta',_,_), 5).
preferencia(professor('Professor 7'), disciplina('Resolução de Problemas I',_,_), 5).
preferencia(professor('Professor 7'), disciplina('RP3',_,_), 5).
preferencia(professor('Professor 7'), disciplina('Analise e Projeto de Software',_,_), 3).
preferencia(professor('Professor 7'), disciplina('Linguagens Formai',_,_), 4).
preferencia(professor('Professor 7'), disciplina('Estrutura de Dados',_,_), 3).
preferencia(professor('Professor 7'), disciplina('Inovacao e Criatividade',_,_), 4).
preferencia(professor('Professor 7'), disciplina('Arquitetura e Organização de Computadores',_,_), 5).
preferencia(professor('Professor 7'), disciplina('RedeComput',_,_), 5).
preferencia(professor('Professor 7'), disciplina('MedAnalise',_,_), 5).
preferencia(professor('Professor 7'), disciplina('AdmEmp',_,_), 5).
preferencia(professor('Professor 7'), disciplina('RPV',_,_), 5).
preferencia(professor('Professor 7'), disciplina('CCCGs',_,_), 5).
preferencia(professor('Professor 7'), disciplina('Engenharia Econômica',_,_), 5).
preferencia(professor('Professor 7'), disciplina('Ética e Legislação em Computação',_,_), 5).
preferencia(professor('Professor 7'), disciplina('Trabalho de Conclusão de Curso I',_,_), 5).
preferencia(professor('Professor 7'), disciplina('CCCGs',_,_), 5).

preferencia(professor('Professor 8'), disciplina('Algoritmos e Programação',_,_), 1).
preferencia(professor('Professor 8'), disciplina('Lógica Matemática',_,_), 1).
preferencia(professor('Professor 8'), disciplina('Matemática Discreta',_,_), 5).
preferencia(professor('Professor 8'), disciplina('Resolução de Problemas I',_,_), 5).
preferencia(professor('Professor 8'), disciplina('RP3',_,_), 5).
preferencia(professor('Professor 8'), disciplina('Analise e Projeto de Software',_,_), 5).
preferencia(professor('Professor 8'), disciplina('Linguagens Formai',_,_), 2).
preferencia(professor('Professor 8'), disciplina('Estrutura de Dados',_,_), 5).
preferencia(professor('Professor 8'), disciplina('Inovacao e Criatividade',_,_), 1).
preferencia(professor('Professor 8'), disciplina('Arquitetura e Organização de Computadores',_,_), 1).
preferencia(professor('Professor 8'), disciplina('RedeComput',_,_), 3).
preferencia(professor('Professor 8'), disciplina('MedAnalise',_,_), 5).
preferencia(professor('Professor 8'), disciplina('AdmEmp',_,_), 5).
preferencia(professor('Professor 8'), disciplina('RPV',_,_), 5).
preferencia(professor('Professor 8'), disciplina('CCCGs',_,_), 5).
preferencia(professor('Professor 8'), disciplina('Engenharia Econômica',_,_), 5).
preferencia(professor('Professor 8'), disciplina('Ética e Legislação em Computação',_,_), 5).
preferencia(professor('Professor 8'), disciplina('Trabalho de Conclusão de Curso I',_,_), 5).
preferencia(professor('Professor 8'), disciplina('CCCGs',_,_), 5).

preferencia(professor('Professor 9'), disciplina('Algoritmos e Programação',_,_), 5).
preferencia(professor('Professor 9'), disciplina('Lógica Matemática',_,_), 4).
preferencia(professor('Professor 9'), disciplina('Matemática Discreta',_,_), 5).
preferencia(professor('Professor 9'), disciplina('Resolução de Problemas I',_,_), 3).
preferencia(professor('Professor 9'), disciplina('RP3',_,_), 5).
preferencia(professor('Professor 9'), disciplina('Analise e Projeto de Software',_,_), 5).
preferencia(professor('Professor 9'), disciplina('Linguagens Formai',_,_), 4).
preferencia(professor('Professor 9'), disciplina('Estrutura de Dados',_,_), 1).
preferencia(professor('Professor 9'), disciplina('Inovacao e Criatividade',_,_), 1).
preferencia(professor('Professor 9'), disciplina('Arquitetura e Organização de Computadores',_,_), 1).
preferencia(professor('Professor 9'), disciplina('RedeComput',_,_), 5).
preferencia(professor('Professor 9'), disciplina('MedAnalise',_,_), 5).
preferencia(professor('Professor 9'), disciplina('AdmEmp',_,_), 1).
preferencia(professor('Professor 9'), disciplina('RPV',_,_), 5).
preferencia(professor('Professor 9'), disciplina('CCCGs',_,_), 5).
preferencia(professor('Professor 9'), disciplina('Engenharia Econômica',_,_), 5).
preferencia(professor('Professor 9'), disciplina('Ética e Legislação em Computação',_,_), 1).
preferencia(professor('Professor 9'), disciplina('Trabalho de Conclusão de Curso I',_,_), 5).
preferencia(professor('Professor 9'), disciplina('CCCGs',_,_), 5).

preferencia(professor('Professor 10'), disciplina('Algoritmos e Programação',_,_), 1).
preferencia(professor('Professor 10'), disciplina('Lógica Matemática',_,_), 4).
preferencia(professor('Professor 10'), disciplina('Matemática Discreta',_,_), 5).
preferencia(professor('Professor 10'), disciplina('Resolução de Problemas I',_,_), 5).
preferencia(professor('Professor 10'), disciplina('RP3',_,_), 4).
preferencia(professor('Professor 10'), disciplina('Analise e Projeto de Software',_,_), 5).
preferencia(professor('Professor 10'), disciplina('Linguagens Formai',_,_), 5).
preferencia(professor('Professor 10'), disciplina('Estrutura de Dados',_,_), 5).
preferencia(professor('Professor 10'), disciplina('Inovacao e Criatividade',_,_), 3).
preferencia(professor('Professor 10'), disciplina('Arquitetura e Organização de Computadores',_,_), 4).
preferencia(professor('Professor 10'), disciplina('RedeComput',_,_), 2).
preferencia(professor('Professor 10'), disciplina('MedAnalise',_,_), 5).
preferencia(professor('Professor 10'), disciplina('AdmEmp',_,_), 5).
preferencia(professor('Professor 10'), disciplina('RPV',_,_), 5).
preferencia(professor('Professor 10'), disciplina('CCCGs',_,_), 5).
preferencia(professor('Professor 10'), disciplina('Engenharia Econômica',_,_), 5).
preferencia(professor('Professor 10'), disciplina('Ética e Legislação em Computação',_,_), 5).
preferencia(professor('Professor 10'), disciplina('Trabalho de Conclusão de Curso I',_,_), 5).
preferencia(professor('Professor 10'), disciplina('CCCGs',_,_), 5).

preferencia(professor('Professor 11'), disciplina('Algoritmos e Programação',_,_), 5).
preferencia(professor('Professor 11'), disciplina('Lógica Matemática',_,_), 4).
preferencia(professor('Professor 11'), disciplina('Matemática Discreta',_,_), 5).
preferencia(professor('Professor 11'), disciplina('Resolução de Problemas I',_,_), 1).
preferencia(professor('Professor 11'), disciplina('RP3',_,_), 5).
preferencia(professor('Professor 11'), disciplina('Analise e Projeto de Software',_,_), 3).
preferencia(professor('Professor 11'), disciplina('Linguagens Formai',_,_), 5).
preferencia(professor('Professor 11'), disciplina('Estrutura de Dados',_,_), 2).
preferencia(professor('Professor 11'), disciplina('Inovacao e Criatividade',_,_), 5).
preferencia(professor('Professor 11'), disciplina('Arquitetura e Organização de Computadores',_,_), 5).
preferencia(professor('Professor 11'), disciplina('RedeComput',_,_), 5).
preferencia(professor('Professor 11'), disciplina('MedAnalise',_,_), 1).
preferencia(professor('Professor 11'), disciplina('AdmEmp',_,_), 1).
preferencia(professor('Professor 11'), disciplina('RPV',_,_), 3).
preferencia(professor('Professor 11'), disciplina('CCCGs',_,_), 5).
preferencia(professor('Professor 11'), disciplina('Engenharia Econômica',_,_), 5).
preferencia(professor('Professor 11'), disciplina('Ética e Legislação em Computação',_,_), 5).
preferencia(professor('Professor 11'), disciplina('Trabalho de Conclusão de Curso I',_,_), 5).
preferencia(professor('Professor 11'), disciplina('CCCGs',_,_), 5).

preferencia(professor('Professor 12'), disciplina('Algoritmos e Programação',_,_), 1).
preferencia(professor('Professor 12'), disciplina('Lógica Matemática',_,_), 4).
preferencia(professor('Professor 12'), disciplina('Matemática Discreta',_,_), 5).
preferencia(professor('Professor 12'), disciplina('Resolução de Problemas I',_,_), 2).
preferencia(professor('Professor 12'), disciplina('RP3',_,_), 3).
preferencia(professor('Professor 12'), disciplina('Analise e Projeto de Software',_,_), 1).
preferencia(professor('Professor 12'), disciplina('Linguagens Formai',_,_), 5).
preferencia(professor('Professor 12'), disciplina('Estrutura de Dados',_,_), 5).
preferencia(professor('Professor 12'), disciplina('Inovacao e Criatividade',_,_), 3).
preferencia(professor('Professor 12'), disciplina('Arquitetura e Organização de Computadores',_,_), 5).
preferencia(professor('Professor 12'), disciplina('RedeComput',_,_), 5).
preferencia(professor('Professor 12'), disciplina('MedAnalise',_,_), 3).
preferencia(professor('Professor 12'), disciplina('AdmEmp',_,_), 5).
preferencia(professor('Professor 12'), disciplina('RPV',_,_), 1).
preferencia(professor('Professor 12'), disciplina('CCCGs',_,_), 5).
preferencia(professor('Professor 12'), disciplina('Engenharia Econômica',_,_), 5).
preferencia(professor('Professor 12'), disciplina('Ética e Legislação em Computação',_,_), 5).
preferencia(professor('Professor 12'), disciplina('Trabalho de Conclusão de Curso I',_,_), 5).
preferencia(professor('Professor 12'), disciplina('CCCGs',_,_), 5).

preferencia(professor('Professor 13'), disciplina('Algoritmos e Programação',_,_), 1).
preferencia(professor('Professor 13'), disciplina('Lógica Matemática',_,_), 4).
preferencia(professor('Professor 13'), disciplina('Matemática Discreta',_,_), 5).
preferencia(professor('Professor 13'), disciplina('Resolução de Problemas I',_,_), 1).
preferencia(professor('Professor 13'), disciplina('RP3',_,_), 4).
preferencia(professor('Professor 13'), disciplina('Analise e Projeto de Software',_,_), 2).
preferencia(professor('Professor 13'), disciplina('Linguagens Formai',_,_), 4).
preferencia(professor('Professor 13'), disciplina('Estrutura de Dados',_,_), 2).
preferencia(professor('Professor 13'), disciplina('Inovacao e Criatividade',_,_), 5).
preferencia(professor('Professor 13'), disciplina('Arquitetura e Organização de Computadores',_,_), 5).
preferencia(professor('Professor 13'), disciplina('RedeComput',_,_), 5).
preferencia(professor('Professor 13'), disciplina('MedAnalise',_,_), 5).
preferencia(professor('Professor 13'), disciplina('AdmEmp',_,_), 5).
preferencia(professor('Professor 13'), disciplina('RPV',_,_), 2).
preferencia(professor('Professor 13'), disciplina('CCCGs',_,_), 5).
preferencia(professor('Professor 13'), disciplina('Engenharia Econômica',_,_), 5).
preferencia(professor('Professor 13'), disciplina('Ética e Legislação em Computação',_,_), 5).
preferencia(professor('Professor 13'), disciplina('Trabalho de Conclusão de Curso I',_,_), 5).
preferencia(professor('Professor 13'), disciplina('CCCGs',_,_), 5).

preferencia(professor('Professor 14'), disciplina('Algoritmos e Programação',_,_), 1).
preferencia(professor('Professor 14'), disciplina('Lógica Matemática',_,_), 4).
preferencia(professor('Professor 14'), disciplina('Matemática Discreta',_,_), 5).
preferencia(professor('Professor 14'), disciplina('Resolução de Problemas I',_,_), 2).
preferencia(professor('Professor 14'), disciplina('RP3',_,_), 1).
preferencia(professor('Professor 14'), disciplina('Analise e Projeto de Software',_,_), 5).
preferencia(professor('Professor 14'), disciplina('Linguagens Formai',_,_), 5).
preferencia(professor('Professor 14'), disciplina('Estrutura de Dados',_,_), 5).
preferencia(professor('Professor 14'), disciplina('Inovacao e Criatividade',_,_), 2).
preferencia(professor('Professor 14'), disciplina('Arquitetura e Organização de Computadores',_,_), 2).
preferencia(professor('Professor 14'), disciplina('RedeComput',_,_), 5).
preferencia(professor('Professor 14'), disciplina('MedAnalise',_,_), 5).
preferencia(professor('Professor 14'), disciplina('AdmEmp',_,_), 5).
preferencia(professor('Professor 14'), disciplina('RPV',_,_), 5).
preferencia(professor('Professor 14'), disciplina('CCCGs',_,_), 5).
preferencia(professor('Professor 14'), disciplina('Engenharia Econômica',_,_), 5).
preferencia(professor('Professor 14'), disciplina('Ética e Legislação em Computação',_,_), 3).
preferencia(professor('Professor 14'), disciplina('Trabalho de Conclusão de Curso I',_,_), 5).
preferencia(professor('Professor 14'), disciplina('CCCGs',_,_), 5).

preferencia(professor('Professor 15'), disciplina('Algoritmos e Programação',_,_), 1).
preferencia(professor('Professor 15'), disciplina('Lógica Matemática',_,_), 4).
preferencia(professor('Professor 15'), disciplina('Matemática Discreta',_,_), 5).
preferencia(professor('Professor 15'), disciplina('Resolução de Problemas I',_,_), 1).
preferencia(professor('Professor 15'), disciplina('RP3',_,_), 4).
preferencia(professor('Professor 15'), disciplina('Analise e Projeto de Software',_,_), 1).
preferencia(professor('Professor 15'), disciplina('Linguagens Formai',_,_), 3).
preferencia(professor('Professor 15'), disciplina('Estrutura de Dados',_,_), 4).
preferencia(professor('Professor 15'), disciplina('Inovacao e Criatividade',_,_), 4).
preferencia(professor('Professor 15'), disciplina('Arquitetura e Organização de Computadores',_,_), 5).
preferencia(professor('Professor 15'), disciplina('RedeComput',_,_), 5).
preferencia(professor('Professor 15'), disciplina('MedAnalise',_,_), 1).
preferencia(professor('Professor 15'), disciplina('AdmEmp',_,_), 5).
preferencia(professor('Professor 15'), disciplina('RPV',_,_), 1).
preferencia(professor('Professor 15'), disciplina('CCCGs',_,_), 5).
preferencia(professor('Professor 15'), disciplina('Engenharia Econômica',_,_), 5).
preferencia(professor('Professor 15'), disciplina('Ética e Legislação em Computação',_,_), 5).
preferencia(professor('Professor 15'), disciplina('Trabalho de Conclusão de Curso I',_,_), 5).
preferencia(professor('Professor 15'), disciplina('CCCGs',_,_), 5).

preferencia(professor('Professor 16'), disciplina('Algoritmos e Programação',_,_), 5).
preferencia(professor('Professor 16'), disciplina('Lógica Matemática',_,_), 1).
preferencia(professor('Professor 16'), disciplina('Matemática Discreta',_,_), 1).
preferencia(professor('Professor 16'), disciplina('Resolução de Problemas I',_,_), 5).
preferencia(professor('Professor 16'), disciplina('RP3',_,_), 1).
preferencia(professor('Professor 16'), disciplina('Analise e Projeto de Software',_,_), 2).
preferencia(professor('Professor 16'), disciplina('Linguagens Formai',_,_), 5).
preferencia(professor('Professor 16'), disciplina('Estrutura de Dados',_,_), 3).
preferencia(professor('Professor 16'), disciplina('Inovacao e Criatividade',_,_), 5).
preferencia(professor('Professor 16'), disciplina('Arquitetura e Organização de Computadores',_,_), 5).
preferencia(professor('Professor 16'), disciplina('RedeComput',_,_), 5).
preferencia(professor('Professor 16'), disciplina('MedAnalise',_,_), 5).
preferencia(professor('Professor 16'), disciplina('AdmEmp',_,_), 5).
preferencia(professor('Professor 16'), disciplina('RPV',_,_), 5).
preferencia(professor('Professor 16'), disciplina('CCCGs',_,_), 5).
preferencia(professor('Professor 16'), disciplina('Engenharia Econômica',_,_), 5).
preferencia(professor('Professor 16'), disciplina('Ética e Legislação em Computação',_,_), 5).
preferencia(professor('Professor 16'), disciplina('Trabalho de Conclusão de Curso I',_,_), 5).
preferencia(professor('Professor 16'), disciplina('CCCGs',_,_), 5).

preferencia(professor('Professor 17'), disciplina('Algoritmos e Programação',_,_), 5).
preferencia(professor('Professor 17'), disciplina('Lógica Matemática',_,_), 4).
preferencia(professor('Professor 17'), disciplina('Matemática Discreta',_,_), 5).
preferencia(professor('Professor 17'), disciplina('Resolução de Problemas I',_,_), 1).
preferencia(professor('Professor 17'), disciplina('RP3',_,_), 5).
preferencia(professor('Professor 17'), disciplina('Analise e Projeto de Software',_,_), 5).
preferencia(professor('Professor 17'), disciplina('Linguagens Formai',_,_), 5).
preferencia(professor('Professor 17'), disciplina('Estrutura de Dados',_,_), 5).
preferencia(professor('Professor 17'), disciplina('Inovacao e Criatividade',_,_), 5).
preferencia(professor('Professor 17'), disciplina('Arquitetura e Organização de Computadores',_,_), 5).
preferencia(professor('Professor 17'), disciplina('RedeComput',_,_), 5).
preferencia(professor('Professor 17'), disciplina('MedAnalise',_,_), 1).
preferencia(professor('Professor 17'), disciplina('AdmEmp',_,_), 1).
preferencia(professor('Professor 17'), disciplina('RPV',_,_), 5).
preferencia(professor('Professor 17'), disciplina('CCCGs',_,_), 5).
preferencia(professor('Professor 17'), disciplina('Engenharia Econômica',_,_), 5).
preferencia(professor('Professor 17'), disciplina('Ética e Legislação em Computação',_,_), 5).
preferencia(professor('Professor 17'), disciplina('Trabalho de Conclusão de Curso I',_,_), 5).
preferencia(professor('Professor 17'), disciplina('CCCGs',_,_), 5).

preferencia(professor('Professor 18'), disciplina('Algoritmos e Programação',_,_), 1).
preferencia(professor('Professor 18'), disciplina('Lógica Matemática',_,_), 3).
preferencia(professor('Professor 18'), disciplina('Matemática Discreta',_,_), 5).
preferencia(professor('Professor 18'), disciplina('Resolução de Problemas I',_,_), 5).
preferencia(professor('Professor 18'), disciplina('RP3',_,_), 5).
preferencia(professor('Professor 18'), disciplina('Analise e Projeto de Software',_,_), 5).
preferencia(professor('Professor 18'), disciplina('Linguagens Formai',_,_), 5).
preferencia(professor('Professor 18'), disciplina('Estrutura de Dados',_,_), 1).
preferencia(professor('Professor 18'), disciplina('Inovacao e Criatividade',_,_), 5).
preferencia(professor('Professor 18'), disciplina('Arquitetura e Organização de Computadores',_,_), 5).
preferencia(professor('Professor 18'), disciplina('RedeComput',_,_), 5).
preferencia(professor('Professor 18'), disciplina('MedAnalise',_,_), 5).
preferencia(professor('Professor 18'), disciplina('AdmEmp',_,_), 5).
preferencia(professor('Professor 18'), disciplina('RPV',_,_), 5).
preferencia(professor('Professor 18'), disciplina('CCCGs',_,_), 5).
preferencia(professor('Professor 18'), disciplina('Engenharia Econômica',_,_), 5).
preferencia(professor('Professor 18'), disciplina('Ética e Legislação em Computação',_,_), 5).
preferencia(professor('Professor 18'), disciplina('Trabalho de Conclusão de Curso I',_,_), 5).
preferencia(professor('Professor 18'), disciplina('CCCGs',_,_), 5).

preferencia(professor('Professor 19'), disciplina('Algoritmos e Programação',_,_), 1).
preferencia(professor('Professor 19'), disciplina('Lógica Matemática',_,_), 4).
preferencia(professor('Professor 19'), disciplina('Matemática Discreta',_,_), 5).
preferencia(professor('Professor 19'), disciplina('Resolução de Problemas I',_,_), 1).
preferencia(professor('Professor 19'), disciplina('RP3',_,_), 3).
preferencia(professor('Professor 19'), disciplina('Analise e Projeto de Software',_,_), 2).
preferencia(professor('Professor 19'), disciplina('Linguagens Formai',_,_), 1).
preferencia(professor('Professor 19'), disciplina('Estrutura de Dados',_,_), 1).
preferencia(professor('Professor 19'), disciplina('Inovacao e Criatividade',_,_), 5).
preferencia(professor('Professor 19'), disciplina('Arquitetura e Organização de Computadores',_,_), 5).
preferencia(professor('Professor 19'), disciplina('RedeComput',_,_), 5).
preferencia(professor('Professor 19'), disciplina('MedAnalise',_,_), 5).
preferencia(professor('Professor 19'), disciplina('AdmEmp',_,_), 5).
preferencia(professor('Professor 19'), disciplina('RPV',_,_), 5).
preferencia(professor('Professor 19'), disciplina('CCCGs',_,_), 5).
preferencia(professor('Professor 19'), disciplina('Engenharia Econômica',_,_), 5).
preferencia(professor('Professor 19'), disciplina('Ética e Legislação em Computação',_,_), 5).
preferencia(professor('Professor 19'), disciplina('Trabalho de Conclusão de Curso I',_,_), 5).
preferencia(professor('Professor 19'), disciplina('CCCGs',_,_), 5).

preferencia(professor('Professor 20'), disciplina('Algoritmos e Programação',_,_), 1).
preferencia(professor('Professor 20'), disciplina('Lógica Matemática',_,_), 4).
preferencia(professor('Professor 20'), disciplina('Matemática Discreta',_,_), 5).
preferencia(professor('Professor 20'), disciplina('Resolução de Problemas I',_,_), 1).
preferencia(professor('Professor 20'), disciplina('RP3',_,_), 5).
preferencia(professor('Professor 20'), disciplina('Analise e Projeto de Software',_,_), 5).
preferencia(professor('Professor 20'), disciplina('Linguagens Formai',_,_), 5).
preferencia(professor('Professor 20'), disciplina('Estrutura de Dados',_,_), 3).
preferencia(professor('Professor 20'), disciplina('Inovacao e Criatividade',_,_), 5).
preferencia(professor('Professor 20'), disciplina('Arquitetura e Organização de Computadores',_,_), 5).
preferencia(professor('Professor 20'), disciplina('RedeComput',_,_), 5).
preferencia(professor('Professor 20'), disciplina('MedAnalise',_,_), 5).
preferencia(professor('Professor 20'), disciplina('AdmEmp',_,_), 5).
preferencia(professor('Professor 20'), disciplina('RPV',_,_), 5).
preferencia(professor('Professor 20'), disciplina('CCCGs',_,_), 5).
preferencia(professor('Professor 20'), disciplina('Engenharia Econômica',_,_), 5).
preferencia(professor('Professor 20'), disciplina('Ética e Legislação em Computação',_,_), 5).
preferencia(professor('Professor 20'), disciplina('Trabalho de Conclusão de Curso I',_,_), 5).
preferencia(professor('Professor 20'), disciplina('CCCGs',_,_), 5).

preferencia(professor('Professor 21'), disciplina('Algoritmos e Programação',_,_), 1).
preferencia(professor('Professor 21'), disciplina('Lógica Matemática',_,_), 4).
preferencia(professor('Professor 21'), disciplina('Matemática Discreta',_,_), 5).
preferencia(professor('Professor 21'), disciplina('Resolução de Problemas I',_,_), 5).
preferencia(professor('Professor 21'), disciplina('RP3',_,_), 5).
preferencia(professor('Professor 21'), disciplina('Analise e Projeto de Software',_,_), 1).
preferencia(professor('Professor 21'), disciplina('Linguagens Formai',_,_), 5).
preferencia(professor('Professor 21'), disciplina('Estrutura de Dados',_,_), 3).
preferencia(professor('Professor 21'), disciplina('Inovacao e Criatividade',_,_), 7).
preferencia(professor('Professor 21'), disciplina('Arquitetura e Organização de Computadores',_,_), 7).
preferencia(professor('Professor 21'), disciplina('RedeComput',_,_), 1).
preferencia(professor('Professor 21'), disciplina('MedAnalise',_,_), 5).
preferencia(professor('Professor 21'), disciplina('AdmEmp',_,_), 5).
preferencia(professor('Professor 21'), disciplina('RPV',_,_), 5).
preferencia(professor('Professor 21'), disciplina('CCCGs',_,_), 5).
preferencia(professor('Professor 21'), disciplina('Engenharia Econômica',_,_), 5).
preferencia(professor('Professor 21'), disciplina('Ética e Legislação em Computação',_,_), 5).
preferencia(professor('Professor 21'), disciplina('Trabalho de Conclusão de Curso I',_,_), 5).
preferencia(professor('Professor 21'), disciplina('CCCGs',_,_), 5).


% Semestre 1
horario(dia('Segunda-feira','18:30', '20:30',_),disciplina('Algoritmos e Programação',_,_)).
horario(dia('Terça-feira','20:30', '22:20',_),disciplina('Resolução de Problemas I',_,_)).
horario(dia('Quarta-feira','20:30', '22:20',_),disciplina('Matemática Discreta',_,_)).
horario(dia('Quarta-feira','18:30', '20:30',_),disciplina('Lógica Matemática',_,_)).
horario(dia('Quinta-feira','18:30', '20:30',_),disciplina('Algoritmos e Programação',_,_)).
horario(dia('Sexta-feira','20:30', '22:20',_),disciplina('Algoritmos e Programação',_,_)).
horario(dia('Quinta-feira','20:30', '22:20',_),disciplina('Matemática Discreta',_,_)).
horario(dia('Sexta-feira','18:30', '20:30',_),disciplina('Lógica Matemática',_,_)).
% Semestre 3
horario(dia('Segunda-feira','18:30', '20:30',_),disciplina('Linguagens Formais',_,_)).
horario(dia('Segunda-feira','20:30', '22:20',_),disciplina('Analise e Projeto de Software',_,_)).
horario(dia('Terça-feira','18:30', '20:30',_),disciplina('RP3',_,_)).
horario(dia('Terça-feira','20:30', '22:20',_),disciplina('RP3',_,_)).
horario(dia('Quarta-feira','18:30', '20:30',_),disciplina('Analise e Projeto de Software',_,_)).
horario(dia('Quarta-feira','20:30', '22:20',_),disciplina('Estrutura de Dados',_,_)).
horario(dia('Quinta-feira','18:30', '20:30',_),disciplina('Linguagens Formais',_,_)).
horario(dia('Quinta-feira','20:30', '22:20',_),disciplina('Inovacao e Criatividade',_,_)).
horario(dia('Sexta-feira','18:30', '20:30',_),disciplina('Arquitetura e Organização de Computadores',_,_)).
horario(dia('Sexta-feira','20:30', '22:20',_),disciplina('Estrutura de Dados',_,_)).


preferencia(professor('Professor 22'), disciplina('Algoritmos e Programação',_,_), 4).
preferencia(professor('Professor 22'), disciplina('Lógica Matemática',_,_), 4).
preferencia(professor('Professor 22'), disciplina('Matemática Discreta',_,_), 5).
preferencia(professor('Professor 22'), disciplina('Resolução de Problemas I',_,_), 1).
preferencia(professor('Professor 22'), disciplina('RP3',_,_), 5).
preferencia(professor('Professor 22'), disciplina('Analise e Projeto de Software',_,_), 2).
preferencia(professor('Professor 22'), disciplina('Linguagens Formai',_,_), 5).
preferencia(professor('Professor 22'), disciplina('Estrutura de Dados',_,_), 4).
preferencia(professor('Professor 22'), disciplina('Inovacao e Criatividade',_,_), 5).
preferencia(professor('Professor 22'), disciplina('Arquitetura e Organização de Computadores',_,_), 5).
preferencia(professor('Professor 22'), disciplina('RedeComput',_,_), 4).
preferencia(professor('Professor 22'), disciplina('MedAnalise',_,_), 3).
preferencia(professor('Professor 22'), disciplina('AdmEmp',_,_), 3).
preferencia(professor('Professor 22'), disciplina('RPV',_,_), 1).
preferencia(professor('Professor 22'), disciplina('CCCGs',_,_), 5).
preferencia(professor('Professor 22'), disciplina('Engenharia Econômica',_,_), 5).
preferencia(professor('Professor 22'), disciplina('Ética e Legislação em Computação',_,_), 5).
preferencia(professor('Professor 22'), disciplina('Trabalho de Conclusão de Curso I',_,_), 5).
preferencia(professor('Professor 22'), disciplina('CCCGs',_,_), 5).


% aloca os fprefessores as dsiciplinas de suas preferencias 
preferencia_valida(Professor, Disciplina, Preferencia) :-
    professor(Professor),
    disciplina(Disciplina, _, _),
    preferencia(professor(Professor), disciplina(Disciplina, _, _), Preferencia),
    Preferencia >= 1,
    Preferencia =< 3.
% aloca os prefessores as disciplinas 
alocar_professor(Disciplina, Professor) :-
    disciplina(Disciplina, _, _),
    professor(Professor),
    preferencia_valida(Professor, Disciplina, Preferencia),
    not((
        preferencia_valida(OutroProfessor, Disciplina, OutraPreferencia),
        OutraPreferencia > Preferencia
    )).
% aloca os professorees as disciplinas 
professores_alocados(Disciplina, Professores) :-
    disciplina(Disciplina, _, _),
    setof(Professor, alocar_professor(Disciplina, Professor), [PrimeiroProfessor|_]),
    Professores = [PrimeiroProfessor].
% mostra as quias disciplinas os professores foram alocados 
mostrar_professor_por_disciplina(Disciplina) :-
    disciplina(Disciplina, _, _),
    professores_alocados(Disciplina, Professores),
    length(Professores, NumProfessores),
    NumProfessores = 1,
    format('Professor alocado para a disciplina ~w: ~w~n', [Disciplina, Professores]).

mostrar_professor_disciplina_CargaHoraria(Disciplina) :-
    disciplina(Disciplina, CargaHoraria, _), % Obtém a carga horária da disciplina
    professores_alocados(Disciplina, Professores), % Obtém os professores alocados para a disciplina
    length(Professores, NumProfessores), % Obtém o número de professores alocados
    NumProfessores = 1, % Verifica se há apenas um professor alocado
    Professores = [Professor], % Obtém o professor da lista de professores
    format('Professor alocado para a disciplina ~w: ~w, Carga Horária: ~w horas~n', [Disciplina, Professor, CargaHoraria]).

mostrar_creditos_do_professor(Professor) :-
    professor(Professor),
    findall(Creditos, (disciplina(Disciplina, _, Creditos), alocar_professor(Disciplina, Professor)), CreditosList),
    sum_list(CreditosList, TotalCreditos),
    format('Total de créditos do professor ~w: ~w créditos~n', [Professor, TotalCreditos]).

% Predicado para mostrar as disciplinas alocadas para um professor
mostrar_disciplinas_do_professor(Professor) :-
    professor(Professor),
    findall(Disciplina, alocar_professor(Disciplina, Professor), Disciplinas),
    format('Disciplinas alocadas para o professor ~w: ~w~n', [Professor, Disciplinas]).
% mostra os horarios geral
mostrar_disciplinas_horarios :-
    professor(Professor),
    dia(Dia, Inicio, Fim, Creditos),
    horario(dia(Dia, _, _, _), disciplina(Disciplina, _, _)),
    alocar_professor(Disciplina, Professor), % Verifica se o professor está alocado para a disciplina
    write('Professor: '), write(Professor), nl,
    write('Dia: '), write(Dia), nl,
    write('Horário: '), write(Inicio), write(' - '), write(Fim), nl,
    write('Disciplina: '), write(Disciplina), nl,
    write('Créditos: '), write(Creditos), nl, nl.








