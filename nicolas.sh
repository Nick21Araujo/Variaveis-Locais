#!/bin/bash
#Criação das variaveis locais
USUARIO="nicolas"
TESTE01=$(test A == A ; echo $?)
TESTE02=$(test -f /etc/passwd ; echo $?)
USUARIOS=$(who | awk '{print $1}')

#Utilizando o comando echo para imprimir na tela os valores das variaveis locais
#e variaveis especiais do shell

echo  " impressão na tela...........: Olá, mundo!!!"
echo "nome do usuario...............: $USUARIO"
echo "nome do arquivo de shell......: $0"
echo "quantidade de parâmetros......: $#"
echo "todos os parãmetros...........: $*"
echo "parâmetro 01..................: $1"
echo "parâmetro 02..................: $2"
echo "status do comando anterior....: $?"
echo " PID do processo..............: $$"
echo "Comando: teste A == A .........: $TESTE01"  
echo "Comando: teste -f /etc/passwd..: $TESTE02"
echo "Usuarios logados...............: $USUARIO"


#Utilizando o comando if para fazer os teste
#validar ambiente
if [ $USUARIO == root ];
then
	echo "teste de usuario..............: Usuario é root"
else
	echo "Test de usuario..............: Usuario não é root"
fi


#utilizando o comando if encadeado para aumentar a quantidade dos
#testes lógicos
if [ $TESTE01 -eq 0 ];
then
	echo "Resultado do comando test é...: VERDADEIRO"
elif [ $TESTE01 -eq 1 ];
then 
	echo"Resultado do comando test é...: FALSO"
fi

#Utilizando o comando case logicos
#é validar o ambinete
case $TESTE01 in
	0)  echo "Resultado do comando case é...: 0 - VERDADEIRO";;
	1)  echo "Resultado do comando case é...: 0 - FALSO";;
	*)  echo "Resultado do comando case é...: 0 - NÃO INDENTIFICADO";;
esac 

#Utilizando o comando read para receber os valores e
#fazer o teste lógico com case
read -p "Digite as letras: A, B OU C.........: " LETRAS;
case $LETRAS in
	A|a) echo "A letra digitada foi...............: $LETRAS";;
	B|b) echo "A letra digitada foi...............: $LETRAS";;
	C|c) echo "A letra digitada foi...............: $LETRAS";;
	*) echo "Letra digitada ERRADA...........: $LETRAS"
esac

#Utilizando o laço de loop for para verificar os numeros digitados
#junto com o comando read
read -p "uma sequencia de numeros.......: " NUMEROS;
for VALORES in $NUMEROS;
do 
	echo "numeros passados para o loop..: $VALORES"
done 

#Utilizando o laço de loop for para gerar uma tabuada junto com o
#comando read
read -p "Digite um numero da tabuada...: " NUMERO;
for TABUADA in $(seq 0 10);
do
	echo "$NUMERO X $TABUADA.......: $(($TABUADA * $NUMERO))"
done 

#Utilizando o laço de loop white para lançar os valores
#desejados com o comando read
read -p "Digite um numero de inicio.....: " INICIO;
read -p "Digite um numero de fim........: " FIM;
while  [ $INICIO -le $FIM ];
do 	
	echo "Valor de sequencia numerica....: $INICIO"
	let INICIO=INICIO+1
done




















































































































