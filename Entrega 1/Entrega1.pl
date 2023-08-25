
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

% disciplina | carga horaria | creditos semanais ou hrs semanais  |
% Matérias do primeiro semestre, carga horária e créditos
disciplina('Algoritmos e Programação','S11', 120,8).
disciplina('Lógica Matemática','S12', 60,4).
disciplina('Matemática Discreta','S13', 60,4).
disciplina('Resolução de Problemas I','S14', 120,8).

% disciplina do terceiro semestre | carga horaria | creditos semanais ou hrs semanais  |
disciplina('Resolução de Problemas 3','S31', 120, 8).
disciplina('Analise e Projeto de Software','S32', 60, 4).
disciplina('Linguagens Formais','S33', 60, 4).
disciplina('Estrutura de Dados','S34', 60, 4).
disciplina('Inovacao e Criatividade','S35', 30, 2).
disciplina('Arquitetura e Organização de Computadores','S36', 30, 2).

% Matérias do primeiro semestre, carga horária e créditos
disciplina('Redes de computadores','S51', 60,4).
disciplina('Medição de Análise','S52', 60,4).
disciplina('Administração e Empreendedorismo','S53', 60,4).
disciplina('Resolução de Problemas V','S54', 120,8).
disciplina('CCCGs','S55', 60,4).

% Declaração das disciplinas do sétimo semestre, carga horária miníma e seus créditos 
disciplina('Engenharia Econômica','S71', 30,2).
disciplina('Ética e Legislação em Computação','S72', 30,2).
disciplina('Trabalho de Conclusão de Curso I','S73', 120,8).
disciplina('CCCGs','S74', 120,8).

% Declaração dos professores com suas respctivas preferencias em cada disciplina
professores('Professor 01', ['S11','S12','S13','S14','S31','S32','S33','S34','S35','S36','S51','S52','S53','S54','S55','S71','S72','S73','S74'], [2,2,1,5,5,5,5,2,5,1,5,5,5,5,5,5,5,5,5], 8 ).
professores('Professor 02', ['S11','S12','S13','S14','S31','S32','S33','S34','S35','S36','S51','S52','S53','S54','S55','S71','S72','S73','S74'], [1,2,2,3,5,5,5,2,4,1,5,5,4,5,5,5,5,5,5], 8 ).
professores('Professor 03', ['S11','S12','S13','S14','S31','S32','S33','S34','S35','S36','S51','S52','S53','S54','S55','S71','S72','S73','S74'], [1,4,5,5,5,5,1,5,5,5,5,5,5,5,5,5,5,5,5], 8 ).
professores('Professor 04', ['S11','S12','S13','S14','S31','S32','S33','S34','S35','S36','S51','S52','S53','S54','S55','S71','S72','S73','S74'], [1,4,5,5,3,5,5,1,5,5,4,5,5,5,5,5,5,5,5], 8 ).
professores('Professor 05', ['S11','S12','S13','S14','S31','S32','S33','S34','S35','S36','S51','S52','S53','S54','S55','S71','S72','S73','S74'], [1,4,4,2,4,3,5,3,4,1,5,5,5,4,5,5,1,5,5], 8 ).
professores('Professor 06', ['S11','S12','S13','S14','S31','S32','S33','S34','S35','S36','S51','S52','S53','S54','S55','S71','S72','S73','S74'], [3,5,5,1,5,3,5,3,4,5,5,4,5,1,5,5,4,5,5], 8 ).
professores('Professor 07', ['S11','S12','S13','S14','S31','S32','S33','S34','S35','S36','S51','S52','S53','S54','S55','S71','S72','S73','S74'], [1,5,5,5,5,3,4,3,5,5,5,5,5,5,5,5,5,5,5], 8 ).
professores('Professor 08', ['S11','S12','S13','S14','S31','S32','S33','S34','S35','S36','S51','S52','S53','S54','S55','S71','S72','S73','S74'], [1,1,4,5,5,5,5,2,5,1,3,5,5,5,5,5,5,5,5], 8 ).
professores('Professor 09', ['S11','S12','S13','S14','S31','S32','S33','S34','S35','S36','S51','S52','S53','S54','S55','S71','S72','S73','S74'], [5,5,5,3,5,5,4,1,1,1,5,5,1,5,5,5,1,5,5], 8 ).
professores('Professor 10', ['S11','S12','S13','S14','S31','S32','S33','S34','S35','S36','S51','S52','S53','S54','S55','S71','S72','S73','S74'], [3,5,5,4,4,5,5,5,3,5,2,5,5,5,5,5,5,5,5], 8 ).
professores('Professor 11', ['S11','S12','S13','S14','S31','S32','S33','S34','S35','S36','S51','S52','S53','S54','S55','S71','S72','S73','S74'], [5,5,5,1,5,3,5,2,5,5,5,3,1,3,5,5,5,5,5], 8 ).
professores('Professor 12', ['S11','S12','S13','S14','S31','S32','S33','S34','S35','S36','S51','S52','S53','S54','S55','S71','S72','S73','S74'], [1,5,5,2,3,1,5,5,3,5,5,3,5,1,5,5,5,5,5], 8 ).
professores('Professor 13', ['S11','S12','S13','S14','S31','S32','S33','S34','S35','S36','S51','S52','S53','S54','S55','S71','S72','S73','S74'], [2,5,5,1,4,2,4,2,5,5,5,4,5,2,5,5,5,5,5], 8 ).
professores('Professor 14', ['S11','S12','S13','S14','S31','S32','S33','S34','S35','S36','S51','S52','S53','S54','S55','S71','S72','S73','S74'], [1,5,5,2,4,1,5,3,5,5,5,5,5,4,5,5,3,5,5], 8 ).
professores('Professor 15', ['S11','S12','S13','S14','S31','S32','S33','S34','S35','S36','S51','S52','S53','S54','S55','S71','S72','S73','S74'], [3,5,5,1,1,2,5,3,5,5,5,1,5,1,5,5,5,5,5], 8 ).
professores('Professor 16', ['S11','S12','S13','S14','S31','S32','S33','S34','S35','S36','S51','S52','S53','S54','S55','S71','S72','S73','S74'], [5,1,1,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5], 8 ).
professores('Professor 17', ['S11','S12','S13','S14','S31','S32','S33','S34','S35','S36','S51','S52','S53','S54','S55','S71','S72','S73','S74'], [5,4,5,1,3,2,1,1,5,5,5,1,3,5,5,5,5,5,5], 8 ).
professores('Professor 18', ['S11','S12','S13','S14','S31','S32','S33','S34','S35','S36','S51','S52','S53','S54','S55','S71','S72','S73','S74'], [1,5,5,5,5,5,5,1,5,5,5,1,3,5,5,5,5,5,5], 8 ).
professores('Professor 19', ['S11','S12','S13','S14','S31','S32','S33','S34','S35','S36','S51','S52','S53','S54','S55','S71','S72','S73','S74'], [1,3,5,5,5,5,5,3,5,5,5,5,5,5,5,5,5,5,5], 8 ).
professores('Professor 20', ['S11','S12','S13','S14','S31','S32','S33','S34','S35','S36','S51','S52','S53','S54','S55','S71','S72','S73','S74'], [1,5,4,1,5,2,5,3,5,5,5,5,5,3,5,5,5,5,5], 8 ).
professores('Professor 21', ['S11','S12','S13','S14','S31','S32','S33','S34','S35','S36','S51','S52','S53','S54','S55','S71','S72','S70','S74'], [1,5,5,4,4,4,5,2,5,3,1,5,4,4,5,5,5,5,5], 8 ).
professores('Professor 22', ['S11','S12','S13','S14','S31','S32','S33','S34','S35','S36','S51','S52','S53','S54','S55','S71','S72','S73','S74'], [4,5,5,1,5,2,5,4,2,5,4,3,3,1,5,5,4,5,5], 8 ).
