# Generics

O Generics est� presente no Java SE a partir da vers�o 5.0. 

Neste cap�tulo n�s vamos aprender o Generics. Primeiramente, n�s vamos mostrar a utilidade do Generics e o problema que ele resolve para o desenvolvedor.

Uma das principais preocupa��es e cuidados que o desenvolvedor deve ter � de evitar desenvolver c�digo redundante e diante de um c�digo que apresenta o uso excessivo de casting a utiliza��o do Generics pode ser muito �til.

Generics permitem que classes, interfaces e m�todos possam ser parametrizados por tipo. Seus benef�cios s�o: 

�	Reuso;

�	Type safety; e

�	Performance.

� comumente utilizado em cole��es:




# Problemas que o Generics pode resolver.

Vamos imaginar que eu precise criar um programa para realiza��o de sorteios. Este programa dever� perguntar para o usu�rio a quantidade de dados que deseja ser imputado e, em seguida, possibilitar a inser��o desses dados. Ao final o programa dever� imprimi-los e realizar o sorteio aleat�rio entre os dados informados pelo usu�rio.

Iremos ent�o desenvolver a classe respons�vel pelo sorteio:

<img src="./imagens/integer-sorters.png" >

![Sorter de n�meros Inteiros](imagens/integer-sorters.png)

Agora desenvolveremos o programa para que o usu�rio impute os dados:



<img src="./imagens/app-int.png" >


Ao rodar o programa, e imputar os dados conforme solicitado, temos como sa�da o valor sorteado:


<img src="./imagens/informe-1.png" >


O programa funciona perfeitamente e atende ao solicitado, mas digamos que o cliente solicite que agora o programa deva permitir que seja informado n�meros do tipo ponto flutuante.

Neste caso, devemos criar uma classe bastante semelhante a que fizemos anteriormente para sorteio de inteiros. Vamos l�:

<img src="./imagens/float-sorters.png" >

A nossa classe App tamb�m dever� sofrer mudan�as. Vamos a elas:


<img src="./imagens/app-float.png" >


Perceba que modificamos, basicamente, apenas os tipos de dados e a maneira como imput�-lo com o Scanner.


No dia da entrega, seu cliente ficou novamente muito satisfeito com o programa, pois o sorteio foi realizado com perfei��o. Veja imagem abaixo:

<img src="./imagens/informe-float.png" >

No final do dia seu cliente teve uma brilhante ideia. Como na semana que vem � o dia internacional das mulheres ele gostaria de sortear uma passagem para Natal para uma de suas funcion�rias... 

Solicitou a mudan�a do programa para que seja permitido realizar sorteio de Strings.

Foi ent�o que essa hist�ria n�o estava mais agradando a voc� programador. 

Alguma coisa precisa ser feita para evitar essas modifica��es constantes nos requisitos de neg�cio. O nosso hipot�tico programador precisava de ajuda. E � aqui que ele conheceu o Generics.

# Resolvendo o problema com o Generics

Nosso hipot�tico programador refatorou o c�digo para que funcione de forma gen�rica, ou seja, independe de tipo ou objeto, a classe Sorter dever� ser capaz de realizar soteios. Deixou ent�o de ter que construir uma classe para cada coisa que o cliente desejar sortear. Vejamos:

<img src="./imagens/sorter.png" >

Com isso nossa Classe App ficar� assim:

<img src="./imagens/AppGeneric.png" >

E tudo continua funcionando perfeitamente, por�m sem a necessidade de criar uma classe diferente para cada tipo de coisa que se deseja sortear.

<img src="./imagens/informe-string.png" >


