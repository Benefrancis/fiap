# Generics

O Generics está presente no Java SE a partir da versão 5.0. 

Neste capítulo nós vamos aprender o Generics. Primeiramente, nós vamos mostrar a utilidade do Generics e o problema que ele resolve para o desenvolvedor.

Uma das principais preocupações e cuidados que o desenvolvedor deve ter é de evitar desenvolver código redundante e diante de um código que apresenta o uso excessivo de casting a utilização do Generics pode ser muito útil.

Generics permitem que classes, interfaces e métodos possam ser parametrizados por tipo. Seus benefícios são: 

•	Reuso;

•	Type safety; e

•	Performance.

É comumente utilizado em coleções:




# Problemas que o Generics pode resolver.

Vamos imaginar que eu precise criar um programa para realização de sorteios. Este programa deverá perguntar para o usuário a quantidade de dados que deseja ser imputado e, em seguida, possibilitar a inserção desses dados. Ao final o programa deverá imprimi-los e realizar o sorteio aleatório entre os dados informados pelo usuário.

Iremos então desenvolver a classe responsável pelo sorteio. 


Agora desenvolveremos o programa para que o usuário impute os dados.


O programa funciona perfeitamente e atende ao solicitado, mas digamos que o cliente solicite que agora o programa deva permitir que seja informado números do tipo ponto flutuante.

Neste caso, devemos criar uma classe bastante semelhante a que fizemos anteriormente para sorteio de inteiros. Vamos lá:

A nossa classe App também deverá sofrer mudanças. Vamos a elas:

No dia da entrega, seu cliente ficou novamente muito satisfeito com o programa, pois o sorteio foi realizado com perfeição. Veja imagem abaixo:

No final do dia seu cliente teve uma brilhante ideia. Como na semana que vem é o dia internacional das mulheres ele gostaria de sortear uma passagem para Natal para uma de suas funcionárias... 

Solicitou a mudança do programa para que seja permitido realizar sorteio de Strings.

Foi então que essa história não estava mais agradando a você programador. 

Alguma coisa precisa ser feita para evitar essas modificações constantes nos requisitos de negócio. O nosso hipotético programador precisava de ajuda. E é aqui que ele conheceu o Generics.

# Resolvendo o problema com o Generics


Por fim quando for utilizar 

E tudo continua funcionando perfeitamente, porém sem a necessidade de criar uma classe a cada tipo de coisa que se deseja sortear.

