typedef struct {
    char nome1[100];
    char posicao1[2];
    int tecnica1;
    int fisico1;
    int tatica1;
    int numCamisa1;
} Jogador1;

typedef struct {
char nome[100];
char posicao[2];
int tecnica;
int fisico;
int tatica;
int numCamisa;
} Jogador;

void lerDadosArquivotime1(Jogador1 *jogadorTime1, int n);
void exibirDadosJogadores1(Jogador1 *jogadorTime1, int n);
void lerDadosArquivo(Jogador *jogadores, int *n);
void exibirDadosJogadores(Jogador *jogadores, int n);
void exibirDadosGoleiros(Jogador *jogadores, int n);
void exibirDadosZagueiros(Jogador *jogadores, int n);
void exibirDadosMeias(Jogador *jogadores, int n);
void exibirDadosAtacantes(Jogador *jogadores, int n);
void salvarDadosArquivo(Jogador *jogadores, int n);
void aumentarTecnicaTodos(Jogador *jogadores, int n, int aumento);
void diminuirTecnicaTodos(Jogador *jogadores, int n, int aumento);
void aumentarTaticaTodos(Jogador *jogadores, int n, int aumento);
void diminuirTaticaTodos(Jogador *jogadores, int n, int aumento);
void aumentarFisicoTodos(Jogador *jogadores, int n, int aumento);
void diminuirFisicoTodos(Jogador *jogadores, int n, int aumento);
void meuTimeTomouGol(Jogador *jogadores, int n, int decremento);
void meuTimeFezGol(Jogador *jogadores, int n, int incremento);
void salvarEscalacao(Jogador *jogadores, int n, int escolha);
void somarAtributos(int *ataque, int *defesa);
void somarAtributosT1(Jogador1 *jogadorTime1, int n, int *ataque1, int *defesa1);
void menuTreinamento(int menuTreino, Jogador *jogadores, int n, int aumento ,int swithescalarTime,int esolheGoleiro,int escolheMeia0,int escolheMeia1,
                    int escolheMeia2,int escolheMeia3 ,int escolheZaguerio0 ,int escolheZaguerio1,
                    int escolheZaguerio2,int escolheZaguerio3,int escolheAtacante0,int escolheAtacante1,
                    int escolheAtacante2, int ataque, int defesa, int ataque1, 
                    int defesa1, char* nomeTime, int tabelaMinha, int tabelaAdversario);
