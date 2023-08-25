#include "Unity/unity.h"
#include "src/Entrega3.h"

void setUp(){} // executada antes de todos os testes

void tearDown(){} // executato ao fim do teste.


void test_menuTreinamento() {
    // Define os valores necessários para testar a função
    #define MAX_JOGADORES 24
    #define MAX_NOME_TIME 4
    Jogador jogadores[MAX_JOGADORES];
    int n = MAX_JOGADORES;  // Número de jogadores no vetor
    int aumento = 1;  // Valor de aumento para treinamento
    int swithescalarTime = 1;
    int escolheGoleiro = 1;
    int escolheMeia0 = 1;
    int escolheMeia1 = 1;
    int escolheMeia2 = 1;
    int escolheMeia3 = 1;
    int escolheZagueiro0 = 1;
    int escolheZagueiro1 = 1;
    int escolheZagueiro2 = 1;
    int escolheZagueiro3 = 1;
    int escolheAtacante0 = 1;
    int escolheAtacante1 = 1;
    int escolheAtacante2 = 1;
    int ataque = 1;
    int defesa = 1;
    int ataque1 = 1;
    int defesa1 = 1;
    char nomeTime[MAX_NOME_TIME] = "Internacional";
    int tabelaMinha = 1;
    int tabelaAdversario = 1;

    // Chama a função que está sendo testada
    menuTreinamento(0, jogadores, n, &aumento, &swithescalarTime, &escolheGoleiro, &escolheMeia0, &escolheMeia1,
                    &escolheMeia2, &escolheMeia3, &escolheZagueiro0, &escolheZagueiro1,
                    &escolheZagueiro2, &escolheZagueiro3, &escolheAtacante0, &escolheAtacante1,
                    &escolheAtacante2, &ataque, &defesa, &ataque1, &defesa1, nomeTime, &tabelaMinha, &tabelaAdversario);

    
    TEST_ASSERT_EQUAL_INT(0, swithescalarTime);  // Verifica se o valor de swithescalarTime é igual a 0

    // Verifica se os jogadores foram treinados corretamente
    // (Substituir os índices e atributos abaixo pelos do Jogador)
    TEST_ASSERT_EQUAL_INT(10, jogadores[0].tecnica);
    TEST_ASSERT_EQUAL_INT(5, jogadores[0].fisico);
    TEST_ASSERT_EQUAL_INT(5, jogadores[0].tatica);

    // Verifica se as variáveis de treinamento foram atualizadas corretamente
    TEST_ASSERT_EQUAL_INT(2, aumento);
    TEST_ASSERT_EQUAL_INT(2, ataque);
    TEST_ASSERT_EQUAL_INT(2, defesa);
    TEST_ASSERT_EQUAL_INT(2, ataque1);
    TEST_ASSERT_EQUAL_INT(2, defesa1);

    TEST_ASSERT_EQUAL_INT(0, escolheGoleiro);
    TEST_ASSERT_EQUAL_INT(0, escolheMeia0);
    TEST_ASSERT_EQUAL_INT(0, escolheMeia1);
    TEST_ASSERT_EQUAL_INT(0, escolheMeia2);
    TEST_ASSERT_EQUAL_INT(0, escolheMeia3);
    TEST_ASSERT_EQUAL_INT(0, escolheZagueiro0);
    TEST_ASSERT_EQUAL_INT(0, escolheZagueiro1);
    TEST_ASSERT_EQUAL_INT(0, escolheZagueiro2);
    TEST_ASSERT_EQUAL_INT(0, escolheZagueiro3);
    TEST_ASSERT_EQUAL_INT(0, escolheAtacante0);
    TEST_ASSERT_EQUAL_INT(0, escolheAtacante1);
    TEST_ASSERT_EQUAL_INT(0, escolheAtacante2);

    // Verifica se o nome do time foi atualizado corretamente
    TEST_ASSERT_EQUAL_STRING("Internacional", nomeTime);

    // Verifica se as tabelas foram atualizadas corretamente
    TEST_ASSERT_EQUAL_INT(2, tabelaMinha);
    TEST_ASSERT_EQUAL_INT(2, tabelaAdversario);

    printf("Teste menuTreinamento executado com sucesso!\n");
}


int main(void){
	UNITY_BEGIN();
	RUN_TEST(test_menuTreinamento);
	return UNITY_END();
}
