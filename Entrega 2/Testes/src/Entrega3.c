#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <locale.h>
#include <unistd.h>
#include <conio.h>
#include <time.h>

// Declarou as variáveis iniciais
char nomeTime[13];
int aumento = 1;
int opcaoMenuInicial = 0;
char timeEscolhido[50];
int menuTreino = 0;
int menuCamp = 0;
int swithescalarTime = 0;
int esolheGoleiro = 0;
int escolheMeia0 = 0;
int escolheMeia1 = 0;
int escolheMeia2 = 0;
int escolheMeia3 = 0;
int escolheZaguerio0 = 0;
int escolheZaguerio1 = 0;
int escolheZaguerio2 = 0;
int escolheZaguerio3 = 0;
int escolheAtacante0 = 0;
int escolheAtacante1 = 0;
int escolheAtacante2 = 0;
const char* nomeArquivo [100]; 
int escolha = 0;

typedef struct {
    char nome1[100];
    char posicao1[2];
    int tecnica1;
    int fisico1;
    int tatica1;
    int numCamisa1;
} Jogador1;
// Ler dados do arquivo txt com os jogadores como o time 1
void lerDadosArquivotime1(Jogador1 *jogadorTime1, int n) {
    char linha[100];
    int i = 0;

    FILE *arquivo = fopen("time1.txt", "r");
    if (arquivo == NULL) {
        printf("Não foi possível abrir o arquivo.\n");
        return;
    }

    while (fgets(linha, 100, arquivo) != NULL) {
        char *token = strtok(linha, ";");
        strcpy(jogadorTime1[i].nome1, token);

        token = strtok(NULL, ";");
        strcpy(jogadorTime1[i].posicao1, token);

        token = strtok(NULL, ";");
        jogadorTime1[i].tecnica1 = atoi(token);

        token = strtok(NULL, ";");
        jogadorTime1[i].fisico1 = atoi(token);

        token = strtok(NULL, ";");
        jogadorTime1[i].tatica1 = atoi(token);

        token = strtok(NULL, ";");
        jogadorTime1[i].numCamisa1 = atoi(token);

        i++;
    }
    n = i;
    fclose(arquivo);

}
// exibir dados dos jogoadores 
void exibirDadosJogadores1(Jogador1 *jogadorTime1, int n) {
    printf("Nome\t\tPosição\tTécnica\tFísico\tTática\tNúmero da camisa\n");
    for (int i = 0; i < n; i++) {
        printf("%-20s %-5s %-7d %-6d %-6d %-2d\n", jogadorTime1[i].nome1, jogadorTime1[i].posicao1,
            jogadorTime1[i].tecnica1, jogadorTime1[i].fisico1, jogadorTime1[i].tatica1,
            jogadorTime1[i].numCamisa1);

    }
}

typedef struct {
char nome[100];
char posicao[2];
int tecnica;
int fisico;
int tatica;
int numCamisa;
} Jogador;
// Ler txt com as informações dos jogadores 
void lerDadosArquivo(Jogador *jogadores, int *n) {
    char linha[100];
    int i = 0;

    FILE *arquivo = fopen("teste.txt", "r");
    if (arquivo == NULL) {
        printf("Não foi possível abrir o arquivo.\n");
        return;
    }

    while (fgets(linha, 100, arquivo) != NULL) {
        char *token = strtok(linha, ";");
        strcpy(jogadores[i].nome, token);

        token = strtok(NULL, ";");
        strcpy(jogadores[i].posicao, token);

        token = strtok(NULL, ";");
        jogadores[i].tecnica = atoi(token);

        token = strtok(NULL, ";");
        jogadores[i].fisico = atoi(token);

        token = strtok(NULL, ";");
        jogadores[i].tatica = atoi(token);

        token = strtok(NULL, ";");
        jogadores[i].numCamisa = atoi(token);

        i++;
    }
    *n = i;
    fclose(arquivo);

}
// exibir dados dos jogoadores 
void exibirDadosJogadores(Jogador *jogadores, int n) {
    lerDadosArquivo(jogadores, &n);
    printf("Nome\t\tPosicao\tTecnica\tFisico\tTatica\tNimero da camisa\n");
    for (int i = 0; i < n; i++) {
        printf("%-20s %-5s %-7d %-6d %-6d %-2d\n", jogadores[i].nome, jogadores[i].posicao,
            jogadores[i].tecnica, jogadores[i].fisico, jogadores[i].tatica,
            jogadores[i].numCamisa);

    }
}

// Exibe dividindo os jogadores em suas posições
void exibirDadosGoleiros(Jogador *jogadores, int n) {
    lerDadosArquivo(jogadores, &n);
    printf("Nome\t\tPosicao\tTecnica\tFisico\tTatica\tNimero da camisa\n");
    for (int i = 0; i < n; i++) {
        if (strcmp(jogadores[i].posicao, "G") == 0) {
            printf("%-20s %-5s %-7d %-6d %-6d %-2d\n", jogadores[i].nome, jogadores[i].posicao,
                jogadores[i].tecnica, jogadores[i].fisico, jogadores[i].tatica,
                jogadores[i].numCamisa);
        }
    }
}
// exibir zagueiros 
void exibirDadosZagueiros(Jogador *jogadores, int n) {
    lerDadosArquivo(jogadores, &n);
    printf("Nome\t\tPosicao\tTecnica\tFisico\tTatica\tNimero da camisa\n");
    for (int i = 0; i < n; i++) {
        if (strcmp(jogadores[i].posicao, "Z") == 0) {
            printf("%-20s %-5s %-7d %-6d %-6d %-2d\n", jogadores[i].nome, jogadores[i].posicao,
                jogadores[i].tecnica, jogadores[i].fisico, jogadores[i].tatica,
                jogadores[i].numCamisa);
        }
    }
}
// exibir meias 
void exibirDadosMeias(Jogador *jogadores, int n) {
    lerDadosArquivo(jogadores, &n);
    printf("Nome\t\tPosicao\tTecnica\tFisico\tTatica\tNimero da camisa\n");
    for (int i = 0; i < n; i++) {
        if (strcmp(jogadores[i].posicao, "M") == 0) {
            printf("%-20s %-5s %-7d %-6d %-6d %-2d\n", jogadores[i].nome, jogadores[i].posicao,
                jogadores[i].tecnica, jogadores[i].fisico, jogadores[i].tatica,
                jogadores[i].numCamisa);
        }
    }
}
// exibir atacantes 
void exibirDadosAtacantes(Jogador *jogadores, int n) {
    lerDadosArquivo(jogadores, &n);
    printf("Nome\t\tPosicao\tTecnica\tFisico\tTatica\tNimero da camisa\n");
    for (int i = 0; i < n; i++) {
        if (strcmp(jogadores[i].posicao, "A") == 0) {
            printf("%-20s %-5s %-7d %-6d %-6d %-2d\n", jogadores[i].nome, jogadores[i].posicao,
                jogadores[i].tecnica, jogadores[i].fisico, jogadores[i].tatica,
                jogadores[i].numCamisa);
        }
    }
}

// Salva os dados em arquivo
void salvarDadosArquivo(Jogador *jogadores, int n) {
    FILE *arquivo = fopen("teste.txt", "w");
    if (arquivo == NULL) {
        printf("Não foi possível abrir o arquivo.\n");
        return;
    }

    //fprintf(arquivo, "Nome;Posicao;Tecnica;Fisico;Tatica;Numero da camisa\n");
    for (int i = 0; i < n; i++) {
        fprintf(arquivo, "%s;%s;%d;%d;%d;%d\n", jogadores[i].nome, jogadores[i].posicao,
               jogadores[i].tecnica, jogadores[i].fisico, jogadores[i].tatica,
               jogadores[i].numCamisa);
    }
    fclose(arquivo);
    //exibirDadosJogadores(jogadores, n);
}

// Funções para aumentar e diminuir técnica
void aumentarTecnicaTodos(Jogador *jogadores, int n, int aumento) {
    lerDadosArquivo(jogadores, &n);
    for (int i = 0; i < n; i++) {
        jogadores[i].tecnica += aumento;
    }
    salvarDadosArquivo(jogadores,n);
    
}
// aumenta parametro tecnica
void diminuirTecnicaTodos(Jogador *jogadores, int n, int aumento) {
    lerDadosArquivo(jogadores, &n);
    for (int i = 0; i < n; i++) {
        jogadores[i].tecnica -= aumento;
    }
    salvarDadosArquivo(jogadores,n);
    
}
// diminui parametro tecnica 
void aumentarTaticaTodos(Jogador *jogadores, int n, int aumento) {
    lerDadosArquivo(jogadores, &n);
    for (int i = 0; i < n; i++) {
        jogadores[i].tatica += aumento;
    }
    salvarDadosArquivo(jogadores,n);
    
}
 // aumenta parametro tatica
void diminuirTaticaTodos(Jogador *jogadores, int n, int aumento) {
    lerDadosArquivo(jogadores, &n);
    for (int i = 0; i < n; i++) {
        jogadores[i].tatica -= aumento;
    }
    salvarDadosArquivo(jogadores,n);
    
}
// diminui parametro tatica
void aumentarFisicoTodos(Jogador *jogadores, int n, int aumento) {
    lerDadosArquivo(jogadores, &n);
    for (int i = 0; i < n; i++) {
        jogadores[i].fisico += aumento;
    }
    salvarDadosArquivo(jogadores,n);
    
}
// aumenta parametro fisico
void diminuirFisicoTodos(Jogador *jogadores, int n, int aumento) {
    lerDadosArquivo(jogadores, &n);
    for (int i = 0; i < n; i++) {
        jogadores[i].fisico -= aumento;
    }
    salvarDadosArquivo(jogadores,n);
    
}
// diminui parametro fisico

// Responsável por diminuir ou aumentar os parâmetros quando um time faz gol
void meuTimeTomouGol(Jogador *jogadores, int n, int decremento) {
    diminuirFisicoTodos(jogadores, n, decremento);
    diminuirTaticaTodos(jogadores, n, decremento);
    diminuirTecnicaTodos(jogadores, n, decremento);
}

void meuTimeFezGol(Jogador *jogadores, int n, int incremento) {
    aumentarFisicoTodos(jogadores, n, incremento);
    aumentarTaticaTodos(jogadores, n, incremento);
    aumentarTecnicaTodos(jogadores, n, incremento);
}

void exibirTabela() { // exibe o histórico com detalhes da partida
    system("cls");
    char linha[1000];

        FILE *arquivo = fopen("Tabela.txt", "r");
        if (arquivo == NULL) {
            printf("Erro ao abrir arquivo\n");
        }

        // Lê cada linha do arquivo e imprime na tela
        while (fgets(linha, 1000, arquivo) != NULL) {
            printf("%s", linha);
        }

    fclose(arquivo); // fecha o arquivo
}

void salvarEscalacao(Jogador *jogadores, int n, int escolha){
    lerDadosArquivo(jogadores, &n);
   
    printf("Nome\t\tPosicao\tTecnica\tFisico\tTatica\tNumero da camisa\n");
    for (int i = 0; i < n; i++) {
        if (jogadores[i].numCamisa == escolha) {
            printf("%-20s %-5s %-7d %-6d %-6d %-2d\n", jogadores[i].nome, jogadores[i].posicao,
            jogadores[i].tecnica, jogadores[i].fisico, jogadores[i].tatica,
            jogadores[i].numCamisa);
        }
    }

    FILE *arquivo;
    if(access("escalacao.txt", F_OK) == 0) {
        arquivo = fopen("escalacao.txt", "a");
    } else {
        arquivo = fopen("escalacao.txt", "w");
    }

    if (arquivo == NULL) {
        printf("Não foi possível abrir o arquivo.\n");
        return;
    }

    for (int i = 0; i < n; i++) {
        if (jogadores[i].numCamisa == escolha) {
            fprintf(arquivo, "%s;%s;%d;%d;%d;%d\n", jogadores[i].nome, jogadores[i].posicao,
                jogadores[i].tecnica, jogadores[i].fisico, jogadores[i].tatica,
                jogadores[i].numCamisa);
        }
    }
    fclose(arquivo);
}


// Para conseguir os parâmetros de defesa e ataque do time do técnico
// TIME TÉCNICO
void somarAtributos(int *ataque, int *defesa) {
    
    // Abre o arquivo de escalação para leitura
    FILE *arquivo = fopen("escalacao.txt", "r");
    if (arquivo == NULL) {
        printf("Não foi possível abrir o arquivo de escalação.\n");
        return;
    }

    Jogador jogadores[100];
    int i = 0;
    char linha[100];

    while (fgets(linha, 100, arquivo) != NULL) {
        Jogador jogador;
        sscanf(linha, "%[^;];%[^;];%d;%d;%d;%d", jogador.nome, jogador.posicao,
            &jogador.tecnica, &jogador.fisico, &jogador.tatica, &jogador.numCamisa);
        jogadores[i] = jogador;
        i++;
    }
    int n = i;
        
    for (int j = 0; j < n; j++) {
        Jogador jogador = jogadores[j];
        if (strcmp(jogador.posicao, "A") == 0 || strcmp(jogador.posicao, "M") == 0) {
            *ataque += jogador.tecnica + jogador.fisico + jogador.tatica;
        } else {
            *defesa += jogador.tecnica + jogador.fisico + jogador.tatica;
        }
    }

    fclose(arquivo);
}

// TIMES ADVERSÁRIOS
void somarAtributosT1(Jogador1 *jogadorTime1, int n, int *ataque1, int *defesa1) {
    lerDadosArquivotime1(jogadorTime1, n);
    
    for (int i = 0; i < n; i++) {
        if (strcmp(jogadorTime1[i].posicao1, "A") == 0 || strcmp(jogadorTime1[i].posicao1, "M") == 0) {
            *ataque1 += jogadorTime1[i].tecnica1 + jogadorTime1[i].fisico1 + jogadorTime1[i].tatica1;
        } else {
            *defesa1 += jogadorTime1[i].tecnica1 + jogadorTime1[i].fisico1 + jogadorTime1[i].tatica1;
        }
    }
}

// A partida em si, com o primeiro e segundo tempo.
void Tempos(Jogador *jogadores, int n, int ataque, int defesa, int ataque1, int defesa1, char* nomeTime, int *tabelaMinha, int *tabelaAdversario) {
    int placarTimeT = 0;
    int placarAdversario = 0;
    char nomeTime1[] = "Time B";  // Time adversário
    char nomeTime2[] = "Time C";  // Times aleatórios
    char nomeTime3[] = "Time D";
    int pontosTime2, pontosTime3;
    int numero = 0;

    somarAtributos(&ataque, &defesa);

    // Inicío do primeiro tempo.

    printf("O jogo comecou!\n");
    printf("Primeiro tempo:\n");
    printf("    \n");
    
    srand(time(NULL));  // semente para gerar números diferentes a cada execução
    
    for (int tempo = 0; tempo <= 45; tempo += 5) { // Para contar o tempo 
        numero = rand() % 6; // gera um número aleatório entre 0 e 5
        printf("Tempo: %d min.\n", tempo); // Mostra o tempo a cada laço
        printf("          \n");

        if(numero == 0 || numero == 2 || numero == 3 || numero == 4){
            printf("Os dois times estao jogando bem!\n");
            printf("Nao teve nenhuma mudanca no placar.\n");
            printf("Placar: %d x %d\n", placarTimeT, placarAdversario);
            printf("    \n");

        } else {
            if (ataque > defesa1) {
                meuTimeFezGol(jogadores, n, +1); // aumenta 1 em todos os parametros dos jogadores 
                placarTimeT++;
                printf("Meu time fez gol!\n");
                printf("Placar: %d x %d\n", placarTimeT, placarAdversario);
                printf("    \n");

            } else if (ataque1 > defesa) {
                meuTimeTomouGol(jogadores, n, -1); // diminui 1 em todos os parametros dos jogadores 
                placarAdversario++;
                printf("Meu time levou gol.\n");
                printf("Placar: %d x %d\n", placarTimeT, placarAdversario);
                printf("    \n");

            } else if (ataque == defesa1 || ataque1 == defesa) {
                printf("Os dois times estao jogando bem!\n");
                printf("Nao teve nenhuma mudanca no placar.\n");
                printf("Placar: %d x %d\n", placarTimeT, placarAdversario);
                printf("    \n");

            }
        }

        if (tempo == 45){
            printf("O primeiro tempo acabou!");
            printf("    \n");

            printf("____________________________________\n ");
            printf("                                       \n");
            printf("               Placar              \n ");
            printf("  Time %s: %d gols                 \n ", nomeTime, placarTimeT);
            printf("  Time Adversario: %d gols         \n ", placarAdversario);
            printf("____________________________________\n ");
            printf("    \n");

            if(placarTimeT == placarAdversario){
                printf("Os times estao empatados!");
                printf("    \n");
            }

            printf("Hora do intervalo, tire um descanco :)\n ");
            printf("    \n");
        }
    }

    printf("Aperte Enter para ir pro segundo tempo...\n");
    _getch();
    system("cls");

    // Inicío do segundo tempo.

    printf("Segundo tempo:\n");
    printf("    \n");

    for (int tempo2 = 0; tempo2 <= 45; tempo2 += 5) {
        numero = rand() % 6; // gera um número aleatório entre 0 e 5
        printf("Tempo: %d min.\n", tempo2);
        printf("    \n");

        if(numero == 0 || numero == 2 || numero == 3 || numero == 4){
            printf("Os dois times estão jogando bem!\n");
            printf("Não teve nenhuma mudanca no placar.\n");
            printf("Placar: %d x %d\n", placarTimeT, placarAdversario);
            printf("    \n");

        } else {
            if (ataque > defesa1) {
                meuTimeFezGol(jogadores, n, +1); // aumenta 1 em todos os parametros dos jogadores 
                placarTimeT++;
                printf("Meu time fez gol!\n");
                printf("Placar: %d x %d\n", placarTimeT, placarAdversario);
                printf("    \n");

            } else if (ataque1 > defesa) {
                meuTimeTomouGol(jogadores, n, -1); // diminui 1 em todos os parametros dos jogadores 
                placarAdversario++;
                printf("Meu time levou gol.\n");
                printf("Placar: %d x %d\n", placarTimeT, placarAdversario);
                printf("    \n");

            } else if (ataque == defesa1 || ataque1 == defesa) {
                printf("Os dois times estao jogando bem!\n");
                printf("Nao teve nenhuma mudanca no placar.\n");
                printf("Placar: %d x %d\n", placarTimeT, placarAdversario);
                printf("    \n");

            }
        }

        if (tempo2 == 45){
            printf("O Jogo acabou!");
            printf("    \n");

            printf("____________________________________\n ");
            printf("                                       \n");
            printf("               Placar              \n ");
            printf("  Time %s: %d gols                 \n ", nomeTime, placarTimeT);
            printf("  Time Adversario: %d gols         \n ", placarAdversario);
            printf("____________________________________\n ");
            printf("    \n");

            if(placarTimeT == placarAdversario){
                printf("Os times empataram!\n");
                printf("    \n");
                *tabelaMinha += 1;
                *tabelaAdversario += 1;

            } else if(placarTimeT > placarAdversario){
                printf("%s ganhou. Parabens!!!\n", nomeTime);
                printf("    \n");
                *tabelaMinha += 3;

            } else if(placarTimeT < placarAdversario){
                printf("O time adversário ganhou. Nao foi dessa vez :(\n");
                printf(" Tente novamente.\n");
                printf("    \n");
                *tabelaAdversario +=3;
            }
            
            // Vai abrir o arquivo da tabela do campeonato para edita-lá
            FILE *arquivo;
            arquivo = fopen("Tabela.txt", "a+"); // abre o arquivo em modo de adição, caso ñ exista vai ser criado e mantenha o conteúdo caso exista
            if (arquivo == NULL) {
                printf("Erro ao abrir o arquivo!");
                return;
            }

            ftruncate(fileno(arquivo), 0); // define o tamanho do arquivo como 0
            pontosTime2 = (rand() % 3) + 1;

            if(pontosTime2 == 0){
                pontosTime3 = 3;
            } else if (pontosTime2 == 1 || pontosTime2 == 2){
                pontosTime2 = 1;
                pontosTime3 = 1;
            } else if (pontosTime2 == 3){
                pontosTime3 = 0;
            }

            fprintf(arquivo, "___________________________________\n");
            fprintf(arquivo, "Tabela do Campeonato:\n");
            fprintf(arquivo, "Time\t\tPontos\n");
            fprintf(arquivo, "------------------------------------\n");
            fprintf(arquivo, "%s\t\t%d\n", nomeTime, *tabelaMinha);
            fprintf(arquivo, "%s\t\t%d\n", nomeTime1, *tabelaAdversario);
            fprintf(arquivo, "%s\t\t%d\n", nomeTime2, pontosTime2);
            fprintf(arquivo, "%s\t\t%d\n", nomeTime3, pontosTime3);
            fprintf(arquivo, "_____________________________________\n");
            fclose(arquivo); // fecha o arquivo 
        }
        
    }

    printf("Aperte Enter para fechar a partida...\n");
    _getch();
    
}

void menuTreinamento(int menuTreino, Jogador *jogadores, int n, int aumento ,int swithescalarTime,int esolheGoleiro,int escolheMeia0,int escolheMeia1,
                    int escolheMeia2,int escolheMeia3 ,int escolheZaguerio0 ,int escolheZaguerio1,
                    int escolheZaguerio2,int escolheZaguerio3,int escolheAtacante0,int escolheAtacante1,
                    int escolheAtacante2, int ataque, int defesa, int ataque1, 
                    int defesa1, char* nomeTime, int tabelaMinha, int tabelaAdversario);

void Partida(Jogador *jogadores, int n, int ataque, int defesa, int ataque1, int defesa1, char* nomeTime, int tabelaMinha, int tabelaAdversario) {
    system("cls");
    //Primeiro tempo
    Tempos(jogadores, n, ataque, defesa, ataque1, defesa1, nomeTime, &tabelaMinha, &tabelaAdversario); 
 

    system("cls");

    // se quer o detalhamento do jogo ou ir para o menu de treinamento
    int esc;

    printf("    \n");
    printf("\nEscolha entre:\n ");
    printf("1 - Ver a tabela do campeonato\n ");
    printf("2 - Ir para o Menu de Treinamento\n ");
    scanf("%d", &esc);
    //escolhaFinalJogo(esc);
    exibirTabela();
    sleep(3);
    printf("Pressione Enter para voltar ao Menu de Treinamento!\n");
    printf("        \n");
    _getch();
    menuTreinamento( menuTreino,  jogadores,  n,  aumento , swithescalarTime, esolheGoleiro, escolheMeia0, escolheMeia1,
            escolheMeia2, escolheMeia3 , escolheZaguerio0 , escolheZaguerio1,
            escolheZaguerio2, escolheZaguerio3, escolheAtacante0, escolheAtacante1,
            escolheAtacante2, ataque, defesa, ataque1, 
            defesa1, nomeTime, tabelaMinha, tabelaAdversario);

}


// Começa o que vai sair no terminal, opção 8 no menu de treinamento. //*** A VARIAVEL ATAQUE SÓ ESTÁ AQUI PARA TESTAR O VALOR DOS PARAMETROS
void escalarTime(int swithescalarTime,int esolheGoleiro,int escolheMeia0,int escolheMeia1,
                    int escolheMeia2,int escolheMeia3 ,int escolheZaguerio0 ,int escolheZaguerio1,
                    int escolheZaguerio2,int escolheZaguerio3,int escolheAtacante0,int escolheAtacante1,
                    int escolheAtacante2, Jogador *jogadores, int n, int ataque, int defesa, int ataque1, 
                    int defesa1, char* nomeTime, int tabelaMinha, int tabelaAdversario){
    system("cls");
    remove("escalacao.txt");
    printf("Ataque Time Tecnico: %d\n", ataque);
    printf("================ Formacoes Disponiveis ================\n ");
    printf("  1 - 4-3-3\n");
    printf("---------------------------\n ");
    printf("|     |             |     |\n ");
    printf("|     |             |     |\n ");
    printf("|     ---------------     |\n ");
    printf("|            A            |\n ");
    printf("|      A            A     |\n ");
    printf("|                         |\n ");
    printf("|            M            |\n ");
    printf("|-------------------------|\n ");
    printf("|     M             M     |\n ");
    printf("|                         |\n ");
    printf("|   Z                 Z   |\n ");
    printf("|         Z      Z        |\n ");
    printf("|                         |\n ");
    printf("|     ---------------     |\n ");
    printf("|     |             |     |\n ");
    printf("|     |      G      |     |\n ");
    printf("---------------------------\n ");
    printf("  2 - 4-4-2\n");
    printf("---------------------------\n ");
    printf("|     |             |     |\n ");
    printf("|     |             |     |\n ");
    printf("|     ---------------     |\n ");
    printf("|         A      A        |\n ");
    printf("|                         |\n ");
    printf("|         M      M        |\n ");
    printf("|    M               M    |\n ");
    printf("|-------------------------|\n ");
    printf("|                         |\n ");
    printf("|   Z                 Z   |\n ");
    printf("|         Z      Z        |\n ");
    printf("|                         |\n ");
    printf("|                         |\n ");
    printf("|     ---------------     |\n ");
    printf("|     |             |     |\n ");
    printf("|     |      G      |     |\n ");
    printf("---------------------------\n ");
    printf("  3 - 4-3-3 b\n");
    printf("---------------------------\n ");
    printf("|     |             |     |\n ");
    printf("|     |      A      |     |\n ");
    printf("|     ---------------     |\n ");
    printf("|                         |\n ");
    printf("|         A      A        |\n ");
    printf("|                         |\n ");
    printf("|   M                 M   |\n ");
    printf("|-------------------------|\n ");
    printf("|            M            |\n ");
    printf("|   Z                 Z   |\n ");
    printf("|         Z      Z        |\n ");
    printf("|                         |\n ");
    printf("|                         |\n ");
    printf("|     ---------------     |\n ");
    printf("|     |             |     |\n ");
    printf("|     |      G      |     |\n ");
    printf("---------------------------\n ");
    printf("  4 - 4-2-2-2\n");
    printf("---------------------------\n ");
    printf("|     |             |     |\n ");
    printf("|     | A         A |     |\n ");
    printf("|     ---------------     |\n ");
    printf("|                         |\n ");
    printf("|      M           M      |\n ");
    printf("|                         |\n ");
    printf("|     M             M     |\n ");
    printf("|-------------------------|\n ");
    printf("|                         |\n ");
    printf("|   Z                 Z   |\n ");
    printf("|         Z      Z        |\n ");
    printf("|                         |\n ");
    printf("|                         |\n ");
    printf("|     ---------------     |\n ");
    printf("|     |             |     |\n ");
    printf("|     |      G      |     |\n ");
    printf("---------------------------\n\n ");
    printf("Qual formacao voce deseja?\n");
    printf("  1 - 4-3-3\n");
    printf("  2 - 4-4-2\n");
    printf("  3 - 4-3-3 b\n");
    printf("  4 - 4-2-2-2\n");
    printf("Informe a formacao\n");
    scanf("%d", &swithescalarTime); // Salva oque o usuário digitou
    while (swithescalarTime >0 && swithescalarTime<5)
    {
        switch (swithescalarTime)
        {
        case 1:
            printf("A formação selecionada foi a 4-3-3\n");
            exibirDadosGoleiros(jogadores, n);
            printf("Informe o numero da camisa do goleiro\n");
            scanf("%d", &esolheGoleiro);
            while (esolheGoleiro !=1 && esolheGoleiro !=13)
            {
                printf("Informe o numero da camisa do goleiro\n");
                scanf("%d", &esolheGoleiro);
            }
            escolha = esolheGoleiro;
            salvarEscalacao(jogadores,n, escolha);

            printf("\n");
            exibirDadosZagueiros(jogadores, n);
            printf("Informe o numero da camisa do primeiro zagueiro\n");
            scanf("%d", &escolheZaguerio0);
            while (escolheZaguerio0 !=5 && escolheZaguerio0 !=11 && escolheZaguerio0 != 18  && escolheZaguerio0 != 21  && escolheZaguerio0 != 23  && escolheZaguerio0 != 24)
            {
                printf("Informe o numero da camisa do primeiro zagueiro\n");
                scanf("%d", &escolheZaguerio0);
            }
            escolha = escolheZaguerio0;
            salvarEscalacao(jogadores,n, escolha);

            printf("\n");
            printf("Informe o numero da camisa do segundo zagueiro\n");
            scanf("%d", &escolheZaguerio1);
            while ((escolheZaguerio1 == escolheZaguerio0) || (escolheZaguerio1 != 5 && escolheZaguerio1 != 11 && escolheZaguerio1 != 18 && escolheZaguerio1 != 21 && escolheZaguerio1 != 23 && escolheZaguerio1 != 24))
            {
                printf("Informe um numero de camisa valido para o segundo zagueiro que ainda nao tenha sido escolhido\n");
                scanf("%d", &escolheZaguerio1);
            }
            escolha = escolheZaguerio1;
            salvarEscalacao(jogadores,n, escolha);

            printf("\n");
            printf("Informe o numero da camisa do terceiro zagueiro\n");
            scanf("%d", &escolheZaguerio2);
            while ((escolheZaguerio2 == escolheZaguerio0) || (escolheZaguerio2 == escolheZaguerio1) || (escolheZaguerio2 !=5 && escolheZaguerio2 !=11 && escolheZaguerio2 != 18  && escolheZaguerio2 != 21  && escolheZaguerio2 != 23  && escolheZaguerio2 != 24))
            {
                printf("Informe um numero de camisa valido para o terceiro zagueiro que ainda nao tenha sido escolhido\n");
                scanf("%d", &escolheZaguerio2);
            }
            escolha = escolheZaguerio2;

            printf("\n");
            printf("Informe o numero da camisa do quarto zagueiro\n");
            scanf("%d", &escolheZaguerio3);
            while ((escolheZaguerio3 == escolheZaguerio0) || (escolheZaguerio3 == escolheZaguerio2) || (escolheZaguerio3 == escolheZaguerio1) || (escolheZaguerio3 !=5 && escolheZaguerio3 !=11 && escolheZaguerio3 != 18  && escolheZaguerio3 != 21  && escolheZaguerio3 != 23  && escolheZaguerio3 != 24))
            {
                printf("Informe um numero de camisa valido para o quarto zagueiro que ainda nao tenha sido escolhido\n");
                scanf("%d", &escolheZaguerio3);
            }
            escolha = escolheZaguerio3;
            salvarEscalacao(jogadores,n, escolha);

            printf("\n");
            exibirDadosMeias(jogadores, n);
            printf("Informe o numero da camisa do primeiro meia\n");
            scanf("%d", &escolheMeia0);
            while (escolheMeia0 !=2 && escolheMeia0 !=6 && escolheMeia0 != 7  && escolheMeia0 != 9  && escolheMeia0 != 10  && escolheMeia0 != 12 && escolheMeia0 != 16 && escolheMeia0 != 17 && escolheMeia0 != 20 && escolheMeia0 != 22)
            {
                printf("Informe o numero da camisa do primeiro meia\n");
                scanf("%d", &escolheMeia0);
            }
            escolha = escolheMeia0;
            salvarEscalacao(jogadores,n, escolha);

            printf("\n");
            printf("Informe o numero da camisa do segundo meia\n");
            scanf("%d", &escolheMeia1);
            while ((escolheMeia1 == escolheMeia0) || (escolheMeia1 !=2 && escolheMeia1 !=6 && escolheMeia1 != 7  && escolheMeia1 != 9  && escolheMeia1 != 10  && escolheMeia1 != 12 && escolheMeia1 != 16 && escolheMeia1 != 17 && escolheMeia1 != 20 && escolheMeia1 != 22))
            {
                printf("Informe um numero de camisa valido para o segundo meia que ainda nao tenha sido escolhido\n");
                scanf("%d", &escolheMeia1);
            }
            escolha = escolheMeia1;
            salvarEscalacao(jogadores,n, escolha);

            printf("\n");
            printf("Informe o numero da camisa do terceiro meia\n");
            scanf("%d", &escolheMeia2);
            while ((escolheMeia2 == escolheMeia0) || (escolheMeia2 == escolheMeia1) || (escolheMeia2 !=2 && escolheMeia2 !=6 && escolheMeia2 != 7  && escolheMeia2 != 9  && escolheMeia2 != 10  && escolheMeia2 != 12 && escolheMeia2 != 16 && escolheMeia2 != 17 && escolheMeia2 != 20 && escolheMeia2 != 22))
            {
                printf("Informe um numero de camisa valido para o terceiro meia que ainda nao tenha sido escolhido\n");
                scanf("%d", &escolheMeia2);
            }
            escolha = escolheMeia2;
            salvarEscalacao(jogadores,n, escolha);
            
            printf("\n");
            exibirDadosAtacantes(jogadores, n);
            printf("Informe o numero da camisa do primeiro atacante\n");
            scanf("%d", &escolheAtacante0);
            while (escolheAtacante0 !=3 && escolheAtacante0 !=4 && escolheAtacante0 != 8  && escolheAtacante0 != 14  && escolheAtacante0 != 15  && escolheAtacante0 != 19)
            {
                printf("Informe o numero da camisa do primeiro atacante\n");
                scanf("%d", &escolheAtacante0);
            }
            escolha = escolheAtacante0;
            salvarEscalacao(jogadores,n, escolha);

            printf("\n");
            printf("Informe o numero da camisa do segundo atacante\n");
            scanf("%d", &escolheAtacante1);
            while ((escolheAtacante1 == escolheAtacante0) || (escolheAtacante1 !=3 && escolheAtacante1 !=4 && escolheAtacante1 != 8  && escolheAtacante1 != 14  && escolheAtacante1 != 15  && escolheAtacante1 != 19))
            {
                printf("Informe um numero de camisa valido para o segundo atacante que ainda nao tenha sido escolhido\n");
                scanf("%d", &escolheAtacante1);
            }
            escolha = escolheAtacante1;
            salvarEscalacao(jogadores,n, escolha);

            printf("\n");
            printf("Informe o numero da camisa do terceiro atacante\n");
            scanf("%d", &escolheAtacante2);
            while ((escolheAtacante2 == escolheAtacante0) || (escolheAtacante2 == escolheAtacante1) || (escolheAtacante2 !=3 && escolheAtacante2 !=4 && escolheAtacante2 != 8  && escolheAtacante2 != 14  && escolheAtacante2 != 15  && escolheAtacante2 != 19))
            {
                printf("Informe um numero de camisa valido para o terceiro atacante que ainda nao tenha sido escolhido\n");
                scanf("%d", &escolheAtacante2);
            }
            escolha = escolheAtacante2;
            salvarEscalacao(jogadores,n, escolha);
            printf("\n");
            break;
        case 2:
            printf("A formação selecionada foi a 4-4-2\n");
            exibirDadosGoleiros(jogadores, n);
            printf("Informe o numero da camisa do goleiro\n");
            scanf("%d", &esolheGoleiro);
            while (esolheGoleiro !=1 && esolheGoleiro !=13)
            {
                printf("Informe o numero da camisa do goleiro\n");
                scanf("%d", &esolheGoleiro);
            }
            escolha = esolheGoleiro;
            salvarEscalacao(jogadores,n, escolha);

            printf("\n");
            exibirDadosZagueiros(jogadores, n);
            printf("Informe o numero da camisa do primeiro zagueiro\n");
            scanf("%d", &escolheZaguerio0);
            while (escolheZaguerio0 !=5 && escolheZaguerio0 !=11 && escolheZaguerio0 != 18  && escolheZaguerio0 != 21  && escolheZaguerio0 != 23  && escolheZaguerio0 != 24)
            {
                printf("Informe o numero da camisa do primeiro zagueiro\n");
                scanf("%d", &escolheZaguerio0);
            }
            escolha = escolheZaguerio0;
            salvarEscalacao(jogadores,n, escolha);

            printf("\n");
            printf("Informe o numero da camisa do segundo zagueiro\n");
            scanf("%d", &escolheZaguerio1);
            while ((escolheZaguerio1 == escolheZaguerio0) || (escolheZaguerio1 != 5 && escolheZaguerio1 != 11 && escolheZaguerio1 != 18 && escolheZaguerio1 != 21 && escolheZaguerio1 != 23 && escolheZaguerio1 != 24))
            {
                printf("Informe um numero de camisa valido para o segundo zagueiro que ainda nao tenha sido escolhido\n");
                scanf("%d", &escolheZaguerio1);
            }
            escolha = escolheZaguerio1;
            salvarEscalacao(jogadores,n, escolha);

            printf("\n");
            printf("Informe o numero da camisa do terceiro zagueiro\n");
            scanf("%d", &escolheZaguerio2);
            while ((escolheZaguerio2 == escolheZaguerio0) || (escolheZaguerio2 == escolheZaguerio1) || (escolheZaguerio2 !=5 && escolheZaguerio2 !=11 && escolheZaguerio2 != 18  && escolheZaguerio2 != 21  && escolheZaguerio2 != 23  && escolheZaguerio2 != 24))
            {
                printf("Informe um numero de camisa valido para o terceiro zagueiro que ainda nao tenha sido escolhido\n");
                scanf("%d", &escolheZaguerio2);
            }
            escolha = escolheZaguerio2;

            printf("\n");
            printf("Informe o numero da camisa do quarto zagueiro\n");
            scanf("%d", &escolheZaguerio3);
            while ((escolheZaguerio3 == escolheZaguerio0) || (escolheZaguerio3 == escolheZaguerio2) || (escolheZaguerio3 == escolheZaguerio1) || (escolheZaguerio3 !=5 && escolheZaguerio3 !=11 && escolheZaguerio3 != 18  && escolheZaguerio3 != 21  && escolheZaguerio3 != 23  && escolheZaguerio3 != 24))
            {
                printf("Informe um numero de camisa valido para o quarto zagueiro que ainda nao tenha sido escolhido\n");
                scanf("%d", &escolheZaguerio3);
            }
            escolha = escolheZaguerio3;
            salvarEscalacao(jogadores,n, escolha);

            printf("\n");
            exibirDadosMeias(jogadores, n);
            printf("Informe o numero da camisa do primeiro meia\n");
            scanf("%d", &escolheMeia0);
            while (escolheMeia0 !=2 && escolheMeia0 !=6 && escolheMeia0 != 7  && escolheMeia0 != 9  && escolheMeia0 != 10  && escolheMeia0 != 12 && escolheMeia0 != 16 && escolheMeia0 != 17 && escolheMeia0 != 20 && escolheMeia0 != 22)
            {
                printf("Informe o numero da camisa do primeiro meia\n");
                scanf("%d", &escolheMeia0);
            }
            escolha = escolheMeia0;
            salvarEscalacao(jogadores,n, escolha);

            printf("\n");
            printf("Informe o numero da camisa do segundo meia\n");
            scanf("%d", &escolheMeia1);
            while ((escolheMeia1 == escolheMeia0) || (escolheMeia1 !=2 && escolheMeia1 !=6 && escolheMeia1 != 7  && escolheMeia1 != 9  && escolheMeia1 != 10  && escolheMeia1 != 12 && escolheMeia1 != 16 && escolheMeia1 != 17 && escolheMeia1 != 20 && escolheMeia1 != 22))
            {
                printf("Informe um numero de camisa valido para o segundo meia que ainda nao tenha sido escolhido\n");
                scanf("%d", &escolheMeia1);
            }
            escolha = escolheMeia1;
            salvarEscalacao(jogadores,n, escolha);

            printf("\n");
            printf("Informe o numero da camisa do terceiro meia\n");
            scanf("%d", &escolheMeia2);
            while ((escolheMeia2 == escolheMeia0) || (escolheMeia2 == escolheMeia1) || (escolheMeia2 !=2 && escolheMeia2 !=6 && escolheMeia2 != 7  && escolheMeia2 != 9  && escolheMeia2 != 10  && escolheMeia2 != 12 && escolheMeia2 != 16 && escolheMeia2 != 17 && escolheMeia2 != 20 && escolheMeia2 != 22))
            {
                printf("Informe um númernumeroo de camisa valido para o terceiro meia que ainda nao tenha sido escolhido\n");
                scanf("%d", &escolheMeia2);
            }
            escolha = escolheMeia2;
            salvarEscalacao(jogadores,n, escolha);

            printf("\n");
            printf("Informe o numero da camisa do quarto meia\n");
            scanf("%d", &escolheMeia3);
            while ((escolheMeia2 == escolheMeia0) || (escolheMeia2 == escolheMeia1) || (escolheMeia2 !=2 && escolheMeia2 !=6 && escolheMeia2 != 7  && escolheMeia2 != 9  && escolheMeia2 != 10  && escolheMeia2 != 12 && escolheMeia2 != 16 && escolheMeia2 != 17 && escolheMeia2 != 20 && escolheMeia2 != 22))
            {
                printf("Informe um numero de camisa valido para o quarto meia que ainda nao tenha sido escolhido\n");
                scanf("%d", &escolheMeia3);
            }
            escolha = escolheMeia3;
            salvarEscalacao(jogadores,n, escolha);

            exibirDadosAtacantes(jogadores, n);
            printf("Informe o numero da camisa do primeiro atacante\n");
            scanf("%d", &escolheAtacante0);
            while (escolheAtacante0 !=3 && escolheAtacante0 !=4 && escolheAtacante0 != 8  && escolheAtacante0 != 14  && escolheAtacante0 != 15  && escolheAtacante0 != 19)
            {
                printf("Informe o numero da camisa do primeiro atacante\n");
                scanf("%d", &escolheAtacante0);
            }
            escolha = escolheAtacante0;
            salvarEscalacao(jogadores,n, escolha);

            printf("\n");
            printf("Informe o numero da camisa do segundo atacante\n");
            scanf("%d", &escolheAtacante1);
            while ((escolheAtacante1 == escolheAtacante0) || (escolheAtacante1 !=3 && escolheAtacante1 !=4 && escolheAtacante1 != 8  && escolheAtacante1 != 14  && escolheAtacante1 != 15  && escolheAtacante1 != 19))
            {
                printf("Informe um numero de camisa valido para o segundo atacante que ainda nao tenha sido escolhido\n");
                scanf("%d", &escolheAtacante1);
            }
            escolha = escolheAtacante1;
            salvarEscalacao(jogadores,n, escolha);
            break;
        case 3:
            printf("A formação selecionada foi a 4-3-3 B\n");
            exibirDadosGoleiros(jogadores, n);
            printf("Informe o numero da camisa do goleiro\n");
            scanf("%d", &esolheGoleiro);
            while (esolheGoleiro !=1 && esolheGoleiro !=13)
            {
                printf("Informe o numero da camisa do goleiro\n");
                scanf("%d", &esolheGoleiro);
            }
            escolha = esolheGoleiro;
            salvarEscalacao(jogadores,n, escolha);

            printf("\n");
            exibirDadosZagueiros(jogadores, n);
            printf("Informe o numero da camisa do primeiro zagueiro\n");
            scanf("%d", &escolheZaguerio0);
            while (escolheZaguerio0 !=5 && escolheZaguerio0 !=11 && escolheZaguerio0 != 18  && escolheZaguerio0 != 21  && escolheZaguerio0 != 23  && escolheZaguerio0 != 24)
            {
                printf("Informe o numero da camisa do primeiro zagueiro\n");
                scanf("%d", &escolheZaguerio0);
            }
            escolha = escolheZaguerio0;
            salvarEscalacao(jogadores,n, escolha);

            printf("\n");
            printf("Informe o numero da camisa do segundo zagueiro\n");
            scanf("%d", &escolheZaguerio1);
            while ((escolheZaguerio1 == escolheZaguerio0) || (escolheZaguerio1 != 5 && escolheZaguerio1 != 11 && escolheZaguerio1 != 18 && escolheZaguerio1 != 21 && escolheZaguerio1 != 23 && escolheZaguerio1 != 24))
            {
                printf("Informe um numero de camisa valido para o segundo zagueiro que ainda nao tenha sido escolhido\n");
                scanf("%d", &escolheZaguerio1);
            }
            escolha = escolheZaguerio1;
            salvarEscalacao(jogadores,n, escolha);

            printf("\n");
            printf("Informe o numero da camisa do terceiro zagueiro\n");
            scanf("%d", &escolheZaguerio2);
            while ((escolheZaguerio2 == escolheZaguerio0) || (escolheZaguerio2 == escolheZaguerio1) || (escolheZaguerio2 !=5 && escolheZaguerio2 !=11 && escolheZaguerio2 != 18  && escolheZaguerio2 != 21  && escolheZaguerio2 != 23  && escolheZaguerio2 != 24))
            {
                printf("Informe um numero de camisa valido para o terceiro zagueiro que ainda nao tenha sido escolhido\n");
                scanf("%d", &escolheZaguerio2);
            }
            escolha = escolheZaguerio2;

            printf("\n");
            printf("Informe o numero da camisa do quarto zagueiro\n");
            scanf("%d", &escolheZaguerio3);
            while ((escolheZaguerio3 == escolheZaguerio0) || (escolheZaguerio3 == escolheZaguerio2) || (escolheZaguerio3 == escolheZaguerio1) || (escolheZaguerio3 !=5 && escolheZaguerio3 !=11 && escolheZaguerio3 != 18  && escolheZaguerio3 != 21  && escolheZaguerio3 != 23  && escolheZaguerio3 != 24))
            {
                printf("Informe um numero de camisa valido para o quarto zagueiro que ainda nao tenha sido escolhido\n");
                scanf("%d", &escolheZaguerio3);
            }
            escolha = escolheZaguerio3;
            salvarEscalacao(jogadores,n, escolha);

            printf("\n");
            exibirDadosMeias(jogadores, n);
            printf("Informe o numero da camisa do primeiro meia\n");
            scanf("%d", &escolheMeia0);
            while (escolheMeia0 !=2 && escolheMeia0 !=6 && escolheMeia0 != 7  && escolheMeia0 != 9  && escolheMeia0 != 10  && escolheMeia0 != 12 && escolheMeia0 != 16 && escolheMeia0 != 17 && escolheMeia0 != 20 && escolheMeia0 != 22)
            {
                printf("Informe o numero da camisa do primeiro meia\n");
                scanf("%d", &escolheMeia0);
            }
            escolha = escolheMeia0;
            salvarEscalacao(jogadores,n, escolha);

            printf("\n");
            printf("Informe o numero da camisa do segundo meia\n");
            scanf("%d", &escolheMeia1);
            while ((escolheMeia1 == escolheMeia0) || (escolheMeia1 !=2 && escolheMeia1 !=6 && escolheMeia1 != 7  && escolheMeia1 != 9  && escolheMeia1 != 10  && escolheMeia1 != 12 && escolheMeia1 != 16 && escolheMeia1 != 17 && escolheMeia1 != 20 && escolheMeia1 != 22))
            {
                printf("Informe um numero de camisa valido para o segundo meia que ainda nao tenha sido escolhido\n");
                scanf("%d", &escolheMeia1);
            }
            escolha = escolheMeia1;
            salvarEscalacao(jogadores,n, escolha);

            printf("\n");
            printf("Informe o numero da camisa do terceiro meia\n");
            scanf("%d", &escolheMeia2);
            while ((escolheMeia2 == escolheMeia0) || (escolheMeia2 == escolheMeia1) || (escolheMeia2 !=2 && escolheMeia2 !=6 && escolheMeia2 != 7  && escolheMeia2 != 9  && escolheMeia2 != 10  && escolheMeia2 != 12 && escolheMeia2 != 16 && escolheMeia2 != 17 && escolheMeia2 != 20 && escolheMeia2 != 22))
            {
                printf("Informe um numero de camisa valido para o terceiro meia que ainda nao tenha sido escolhido\n");
                scanf("%d", &escolheMeia2);
            }
            escolha = escolheMeia2;
            salvarEscalacao(jogadores,n, escolha);
            
            printf("\n");
            exibirDadosAtacantes(jogadores, n);
            printf("Informe o numero da camisa do primeiro atacante\n");
            scanf("%d", &escolheAtacante0);
            while (escolheAtacante0 !=3 && escolheAtacante0 !=4 && escolheAtacante0 != 8  && escolheAtacante0 != 14  && escolheAtacante0 != 15  && escolheAtacante0 != 19)
            {
                printf("Informe o numero da camisa do primeiro atacante\n");
                scanf("%d", &escolheAtacante0);
            }
            escolha = escolheAtacante0;
            salvarEscalacao(jogadores,n, escolha);

            printf("\n");
            printf("Informe o numero da camisa do segundo atacante\n");
            scanf("%d", &escolheAtacante1);
            while ((escolheAtacante1 == escolheAtacante0) || (escolheAtacante1 !=3 && escolheAtacante1 !=4 && escolheAtacante1 != 8  && escolheAtacante1 != 14  && escolheAtacante1 != 15  && escolheAtacante1 != 19))
            {
                printf("Informe um numero de camisa valido para o segundo atacante que ainda nao tenha sido escolhido\n");
                scanf("%d", &escolheAtacante1);
            }
            escolha = escolheAtacante1;
            salvarEscalacao(jogadores,n, escolha);

            printf("\n");
            printf("Informe o numero da camisa do terceiro atacante\n");
            scanf("%d", &escolheAtacante2);
            while ((escolheAtacante2 == escolheAtacante0) || (escolheAtacante2 == escolheAtacante1) || (escolheAtacante2 !=3 && escolheAtacante2 !=4 && escolheAtacante2 != 8  && escolheAtacante2 != 14  && escolheAtacante2 != 15  && escolheAtacante2 != 19))
            {
                printf("Informe um numero de camisa valido para o terceiro atacante que ainda nao tenha sido escolhido\n");
                scanf("%d", &escolheAtacante2);
            }
            escolha = escolheAtacante2;
            salvarEscalacao(jogadores,n, escolha);
            printf("\n");
            break;

        case 4:
            printf("A formação selecionada foi a 4-2-2-2\n");
            exibirDadosGoleiros(jogadores, n);
            printf("Informe o numero da camisa do goleiro\n");
            scanf("%d", &esolheGoleiro);
            while (esolheGoleiro !=1 && esolheGoleiro !=13)
            {
                printf("Informe o numero da camisa do goleiro\n");
                scanf("%d", &esolheGoleiro);
            }
            escolha = esolheGoleiro;
            salvarEscalacao(jogadores,n, escolha);

            printf("\n");
            exibirDadosZagueiros(jogadores, n);
            printf("Informe o numero da camisa do primeiro zagueiro\n");
            scanf("%d", &escolheZaguerio0);
            while (escolheZaguerio0 !=5 && escolheZaguerio0 !=11 && escolheZaguerio0 != 18  && escolheZaguerio0 != 21  && escolheZaguerio0 != 23  && escolheZaguerio0 != 24)
            {
                printf("Informe o numero da camisa do primeiro zagueiro\n");
                scanf("%d", &escolheZaguerio0);
            }
            escolha = escolheZaguerio0;
            salvarEscalacao(jogadores,n, escolha);

            printf("\n");
            printf("Informe o numero da camisa do segundo zagueiro\n");
            scanf("%d", &escolheZaguerio1);
            while ((escolheZaguerio1 == escolheZaguerio0) || (escolheZaguerio1 != 5 && escolheZaguerio1 != 11 && escolheZaguerio1 != 18 && escolheZaguerio1 != 21 && escolheZaguerio1 != 23 && escolheZaguerio1 != 24))
            {
                printf("Informe um numero de camisa valido para o segundo zagueiro que ainda nao tenha sido escolhido\n");
                scanf("%d", &escolheZaguerio1);
            }
            escolha = escolheZaguerio1;
            salvarEscalacao(jogadores,n, escolha);

            printf("\n");
            printf("Informe o numero da camisa do terceiro zagueiro\n");
            scanf("%d", &escolheZaguerio2);
            while ((escolheZaguerio2 == escolheZaguerio0) || (escolheZaguerio2 == escolheZaguerio1) || (escolheZaguerio2 !=5 && escolheZaguerio2 !=11 && escolheZaguerio2 != 18  && escolheZaguerio2 != 21  && escolheZaguerio2 != 23  && escolheZaguerio2 != 24))
            {
                printf("Informe um numero de camisa valido para o terceiro zagueiro que ainda nao tenha sido escolhido\n");
                scanf("%d", &escolheZaguerio2);
            }
            escolha = escolheZaguerio2;

            printf("\n");
            printf("Informe o numero da camisa do quarto zagueiro\n");
            scanf("%d", &escolheZaguerio3);
            while ((escolheZaguerio3 == escolheZaguerio0) || (escolheZaguerio3 == escolheZaguerio2) || (escolheZaguerio3 == escolheZaguerio1) || (escolheZaguerio3 !=5 && escolheZaguerio3 !=11 && escolheZaguerio3 != 18  && escolheZaguerio3 != 21  && escolheZaguerio3 != 23  && escolheZaguerio3 != 24))
            {
                printf("Informe um numero de camisa valido para o quarto zagueiro que ainda nao tenha sido escolhido\n");
                scanf("%d", &escolheZaguerio3);
            }
            escolha = escolheZaguerio3;
            salvarEscalacao(jogadores,n, escolha);

            printf("\n");
            exibirDadosMeias(jogadores, n);
            printf("Informe o numero da camisa do primeiro meia\n");
            scanf("%d", &escolheMeia0);
            while (escolheMeia0 !=2 && escolheMeia0 !=6 && escolheMeia0 != 7  && escolheMeia0 != 9  && escolheMeia0 != 10  && escolheMeia0 != 12 && escolheMeia0 != 16 && escolheMeia0 != 17 && escolheMeia0 != 20 && escolheMeia0 != 22)
            {
                printf("Informe o numero da camisa do primeiro meia\n");
                scanf("%d", &escolheMeia0);
            }
            escolha = escolheMeia0;
            salvarEscalacao(jogadores,n, escolha);

            printf("\n");
            printf("Informe o numero da camisa do segundo meia\n");
            scanf("%d", &escolheMeia1);
            while ((escolheMeia1 == escolheMeia0) || (escolheMeia1 !=2 && escolheMeia1 !=6 && escolheMeia1 != 7  && escolheMeia1 != 9  && escolheMeia1 != 10  && escolheMeia1 != 12 && escolheMeia1 != 16 && escolheMeia1 != 17 && escolheMeia1 != 20 && escolheMeia1 != 22))
            {
                printf("Informe um numero de camisa valido para o segundo meia que ainda nao tenha sido escolhido\n");
                scanf("%d", &escolheMeia1);
            }
            escolha = escolheMeia1;
            salvarEscalacao(jogadores,n, escolha);

            printf("\n");
            printf("Informe o numero da camisa do terceiro meia\n");
            scanf("%d", &escolheMeia2);
            while ((escolheMeia2 == escolheMeia0) || (escolheMeia2 == escolheMeia1) || (escolheMeia2 !=2 && escolheMeia2 !=6 && escolheMeia2 != 7  && escolheMeia2 != 9  && escolheMeia2 != 10  && escolheMeia2 != 12 && escolheMeia2 != 16 && escolheMeia2 != 17 && escolheMeia2 != 20 && escolheMeia2 != 22))
            {
                printf("Informe um numero de camisa valido para o terceiro meia que ainda nao tenha sido escolhido\n");
                scanf("%d", &escolheMeia2);
            }
            escolha = escolheMeia2;
            salvarEscalacao(jogadores,n, escolha);

            printf("\n");
            printf("Informe o numero da camisa do quarto meia\n");
            scanf("%d", &escolheMeia3);
            while ((escolheMeia2 == escolheMeia0) || (escolheMeia2 == escolheMeia1) || (escolheMeia2 !=2 && escolheMeia2 !=6 && escolheMeia2 != 7  && escolheMeia2 != 9  && escolheMeia2 != 10  && escolheMeia2 != 12 && escolheMeia2 != 16 && escolheMeia2 != 17 && escolheMeia2 != 20 && escolheMeia2 != 22))
            {
                printf("Informe um numero de camisa valido para o quarto meia que ainda nao tenha sido escolhido\n");
                scanf("%d", &escolheMeia3);
            }
            escolha = escolheMeia3;
            salvarEscalacao(jogadores,n, escolha);

            exibirDadosAtacantes(jogadores, n);
            printf("Informe o numero da camisa do primeiro atacante\n");
            scanf("%d", &escolheAtacante0);
            while (escolheAtacante0 !=3 && escolheAtacante0 !=4 && escolheAtacante0 != 8  && escolheAtacante0 != 14  && escolheAtacante0 != 15  && escolheAtacante0 != 19)
            {
                printf("Informe o numero da camisa do primeiro atacante\n");
                scanf("%d", &escolheAtacante0);
            }
            escolha = escolheAtacante0;
            salvarEscalacao(jogadores,n, escolha);

            printf("\n");
            printf("Informe o numero da camisa do segundo atacante\n");
            scanf("%d", &escolheAtacante1);
            while ((escolheAtacante1 == escolheAtacante0) || (escolheAtacante1 !=3 && escolheAtacante1 !=4 && escolheAtacante1 != 8  && escolheAtacante1 != 14  && escolheAtacante1 != 15  && escolheAtacante1 != 19))
            {
                printf("Informe um numero de camisa valido para o segundo atacante que ainda não tenha sido escolhido\n");
                scanf("%d", &escolheAtacante1);
            }
            escolha = escolheAtacante1;
            salvarEscalacao(jogadores,n, escolha);
            break;
        default:
            break;
        }

        break;
    } 
        printf("Pressione Enter para comecar a partida!\n");
        printf("        \n");
        _getch();
        Partida(jogadores, n, ataque, defesa, ataque1, defesa1, nomeTime, tabelaMinha, tabelaAdversario);
}   

// Segunda parte do terminal, menu inicial
void menuTreinamento(int menuTreino, Jogador *jogadores, int n, int aumento ,int swithescalarTime,int esolheGoleiro,int escolheMeia0,int escolheMeia1,
                    int escolheMeia2,int escolheMeia3 ,int escolheZaguerio0 ,int escolheZaguerio1,
                    int escolheZaguerio2,int escolheZaguerio3,int escolheAtacante0,int escolheAtacante1,
                    int escolheAtacante2, int ataque, int defesa, int ataque1, 
                    int defesa1, char* nomeTime, int tabelaMinha, int tabelaAdversario){
    system("cls");
    printf("================ Menu De Treinamento ================\n ");
    printf("Treinar os jogadores do %s", timeEscolhido);
    printf("\n");
    printf("  1 - Treinamento Tecnico\n");
    printf("  2 - Treinamento Fisico\n");
    printf("  3 - Treinamento Tatica\n");
    printf("  4 - Mostrar time completo\n");
    printf("  5 - Iniciar Partida\n");
    printf("  6 - Escalar Time\n");
    printf("  7 - Ver Classificação\n");
    printf("  0 - Sair\n");
    printf("O que voce deseja fazer?\n");
    scanf("%d", &menuTreino);
    while (menuTreino >=0 && menuTreino <10)
    {
        switch (menuTreino)
        {
        case 1:
            aumentarTecnicaTodos(jogadores, n, aumento);
            printf("jogadores treinados");
            sleep(1);
            escalarTime( swithescalarTime, esolheGoleiro, escolheMeia0, escolheMeia1,
                escolheMeia2, escolheMeia3 , escolheZaguerio0 , escolheZaguerio1,
                escolheZaguerio2, escolheZaguerio3, escolheAtacante0, escolheAtacante1,
                escolheAtacante2, jogadores, n, ataque, defesa, ataque1, defesa1, nomeTime, tabelaMinha, tabelaAdversario);
            break;
        case 2:
            aumentarFisicoTodos(jogadores, n, aumento);
            printf("jogadores treinados");
            sleep(3);
            escalarTime( swithescalarTime, esolheGoleiro, escolheMeia0, escolheMeia1,
                escolheMeia2, escolheMeia3 , escolheZaguerio0 , escolheZaguerio1,
                escolheZaguerio2, escolheZaguerio3, escolheAtacante0, escolheAtacante1,
                escolheAtacante2, jogadores, n, ataque, defesa, ataque1, defesa1, nomeTime, tabelaMinha, tabelaAdversario);
            break;
        case 3:
            aumentarTaticaTodos(jogadores, n, aumento);
            printf("jogadores treinados");
            sleep(3);
            escalarTime( swithescalarTime, esolheGoleiro, escolheMeia0, escolheMeia1,
                escolheMeia2, escolheMeia3 , escolheZaguerio0 , escolheZaguerio1,
                escolheZaguerio2, escolheZaguerio3, escolheAtacante0, escolheAtacante1,
                escolheAtacante2, jogadores, n, ataque, defesa, ataque1, defesa1, nomeTime, tabelaMinha, tabelaAdversario);
            break;
        case 4:
            exibirDadosJogadores(jogadores, n);
            sleep(3);
            printf("Pressione Enter para voltar ao Menu de Treinamento!\n");
            printf("        \n");
            _getch();
                menuTreinamento( menuTreino,  jogadores,  n,  aumento , swithescalarTime, esolheGoleiro, escolheMeia0, escolheMeia1,
                escolheMeia2, escolheMeia3 , escolheZaguerio0 , escolheZaguerio1,
                escolheZaguerio2, escolheZaguerio3, escolheAtacante0, escolheAtacante1,
                escolheAtacante2, ataque, defesa, ataque1, 
                defesa1, nomeTime, tabelaMinha, tabelaAdversario);
            break;
        case 5:
            Partida(jogadores, n, ataque, defesa, ataque1, defesa1, nomeTime, tabelaMinha, tabelaAdversario);
            break;
        case 6:
            escalarTime( swithescalarTime, esolheGoleiro, escolheMeia0, escolheMeia1,
                escolheMeia2, escolheMeia3 , escolheZaguerio0 , escolheZaguerio1,
                escolheZaguerio2, escolheZaguerio3, escolheAtacante0, escolheAtacante1,
                escolheAtacante2, jogadores, n, ataque, defesa, ataque1, defesa1, nomeTime, tabelaMinha, tabelaAdversario);
            break; 
            case 7:
                exibirTabela();
            break; 
        case 0:
            // precisa salvar antes de sair 
            exit(0);
        default:
            break;
        }
    }
}


// Primeira parte, escolhe o time que vai treinar
void menuInicial(int opcaoMenuInicial, char* timeEscolhido, Jogador *jogadores, int n, int aumento ,int swithescalarTime,int esolheGoleiro,int escolheMeia0,int escolheMeia1,
                    int escolheMeia2,int escolheMeia3 ,int escolheZaguerio0 ,int escolheZaguerio1,
                    int escolheZaguerio2,int escolheZaguerio3,int escolheAtacante0,int escolheAtacante1,
                    int escolheAtacante2, int ataque, int defesa, int ataque1, 
                    int defesa1, char* nomeTime, int tabelaMinha, int tabelaAdversario){
    printf("|------------------------------------------------|\n\n");
    printf("|                 Seja bem vindo                 |\n\n");
    printf("|Monte o seu time e seja o nosso melhor treinador|\n");
    printf("|Os times dispiniveis seo:                       |\n");
    printf("|  1 - Corintians                                |\n");                         
    printf("|  2 - Gremio                                    |\n");
    printf("|  3 - Internacional                             |\n");
    printf("|  4 - Flamengo                                  |\n");
    printf("\nQual time voce vai treinar? \n");
    scanf("%d", &opcaoMenuInicial);
    while (opcaoMenuInicial >0 && opcaoMenuInicial <5)
    {   
        switch (opcaoMenuInicial)
        {
        case 1:
            strcpy(timeEscolhido, "Corinthians");
            printf("Otima escolha, voce agora e o tecnico do Corintians\n\n");
            strcpy(nomeTime, "Corinthians");
            menuTreinamento( menuTreino,  jogadores,  n,  aumento , swithescalarTime, esolheGoleiro, escolheMeia0, escolheMeia1,
                        escolheMeia2, escolheMeia3 , escolheZaguerio0 , escolheZaguerio1,
                        escolheZaguerio2, escolheZaguerio3, escolheAtacante0, escolheAtacante1,
                        escolheAtacante2, ataque, defesa, ataque1, 
                        defesa1, nomeTime, tabelaMinha, tabelaAdversario);
            sleep(3);
            break;
        case 2:
            strcpy(timeEscolhido, "Gremio");
            printf("Otima escolha, voce agora e o tecnico do Gremio\n\n");
            strcpy(nomeTime, "Gremio");
            menuTreinamento( menuTreino,  jogadores, n,  aumento , swithescalarTime, esolheGoleiro, escolheMeia0, escolheMeia1,
                        escolheMeia2, escolheMeia3 , escolheZaguerio0 , escolheZaguerio1,
                        escolheZaguerio2, escolheZaguerio3, escolheAtacante0, escolheAtacante1,
                        escolheAtacante2, ataque, defesa, ataque1, 
                        defesa1, nomeTime, tabelaMinha, tabelaAdversario);
            sleep(3);
            break;
        case 3:
            strcpy(timeEscolhido, "Internacional");
            printf("Otima escolha, voce agora e o tecnico do Internacional\n\n");
            strcpy(nomeTime, "Internacional");
            menuTreinamento( menuTreino,  jogadores, n,  aumento , swithescalarTime, esolheGoleiro, escolheMeia0, escolheMeia1,
                        escolheMeia2, escolheMeia3 , escolheZaguerio0 , escolheZaguerio1,
                        escolheZaguerio2, escolheZaguerio3, escolheAtacante0, escolheAtacante1,
                        escolheAtacante2, ataque, defesa, ataque1, 
                        defesa1, nomeTime, tabelaMinha, tabelaAdversario);
            sleep(3);
            break;
        case 4:
            strcpy(timeEscolhido, "Flamengo");
            printf("Otima escolha, voce agora e o tecnico do Flamengo\n\n");
            strcpy(nomeTime, "Flamengo");
            menuTreinamento( menuTreino,  jogadores, n,  aumento , swithescalarTime, esolheGoleiro, escolheMeia0, escolheMeia1,
                        escolheMeia2, escolheMeia3 , escolheZaguerio0 , escolheZaguerio1,
                        escolheZaguerio2, escolheZaguerio3, escolheAtacante0, escolheAtacante1,
                        escolheAtacante2, ataque, defesa, ataque1, 
                        defesa1, nomeTime, tabelaMinha, tabelaAdversario);
            sleep(3);
            break;                
        default:
            break;
        }
        //break;
    }
    menuInicial(opcaoMenuInicial, timeEscolhido, jogadores,  n, aumento , swithescalarTime, esolheGoleiro, escolheMeia0, escolheMeia1,
                escolheMeia2, escolheMeia3 ,escolheZaguerio0 , escolheZaguerio1,
                escolheZaguerio2, escolheZaguerio3, escolheAtacante0, escolheAtacante1,
                escolheAtacante2, ataque, defesa, ataque1, 
                defesa1, nomeTime, tabelaMinha, tabelaAdversario);
                sleep(3);
}

//Chama as funções na main
/*int main() {
    setlocale(LC_ALL, "Portuguese_Brazil.1252");
    Jogador *jogadores;
    Jogador1 *jogadorTime1;

    int n = 50;
    int ataque = 0; int defesa = 0;
    int ataque1 = 0; int defesa1 = 0;
    int tabelaMinha = 0;
    int tabelaAdversario = 0;

    // reserva espaço na memoria para o ponteiro
    jogadores = (Jogador*) malloc(n * sizeof(Jogador));
    if (jogadores == NULL) {
        printf("Erro na alocação de memória.\n");
    }
    
    // reserva espaço na memoria para o ponteiro
    jogadorTime1 = (Jogador1*) malloc(n * sizeof(Jogador1));
    if (jogadorTime1 == NULL) {
        printf("Erro na alocação de memória.\n");
    }
    
    //lerDadosArquivotime1(jogadorTime1,n); 
    //remove("Tabela.txt");
    //exibirTabela(); 
    somarAtributosT1(jogadorTime1, n, &ataque1, &defesa1);

    menuInicial(opcaoMenuInicial, timeEscolhido, jogadores, n, aumento , swithescalarTime, esolheGoleiro, escolheMeia0, escolheMeia1,
                    escolheMeia2, escolheMeia3 ,escolheZaguerio0 , escolheZaguerio1,
                    escolheZaguerio2, escolheZaguerio3, escolheAtacante0, escolheAtacante1,
                    escolheAtacante2, ataque, defesa, ataque1, 
                    defesa1, nomeTime, tabelaMinha, tabelaAdversario);

    return 0;
}*/
