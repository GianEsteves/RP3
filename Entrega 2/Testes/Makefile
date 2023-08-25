# Makefile
# 
# Objetivo: Exemplo de automatização dos TestesEntrega com Makefile.
# 
# Site: https://dirack.github.io
# 
# Versão 1.0
# 
# Programador: Rodolfo A C Neves (Dirack) 22/10/2020
# 
# Email: rodolfo_profissional@hotmail.com
# 
# Licença: GPL-3.0 <https://www.gnu.org/licenses/gpl-3.0.txt>.

all: TestesEntrega.exe

TestesEntrega.exe: TestesEntrega.c
	gcc.exe TestesEntrega.c src/Entrega3.c Unity/unity.c -o TestesEntrega.exe
	./TestesEntrega.exe

clean:
	del TestesEntrega.exe

help:
	@echo "Para compilar e rodar o exemplo utilize o comando 'mingw32-make'"