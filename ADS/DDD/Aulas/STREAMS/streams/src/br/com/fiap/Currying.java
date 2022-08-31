package br.com.fiap;

import java.util.Arrays;
import java.util.List;
import java.util.function.Function;
import java.util.stream.Collectors;

import org.javatuples.Pair;

/**
 * O currying é um processo usado para transformar uma função n-ária em uma
 * série ou funções unárias, e foi nomeado em homenagem a Haskell Curry, um
 * matemático americano.
 * 
 * A forma g:: x -> y -> z é a forma curry de f :: (x, y) -> z.
 * 
 * Para a raiz quadrada apresentada anteriormente, f(x,y) = x² + y², uma versão
 * curry, sem o uso da BiFunction, seria usada várias vezes.
 * 
 * Uma única aplicação de uma função apenas substituiria o parâmetro por um
 * valor, como vimos anteriormente.
 * 
 * O código a seguir mostra como implementar uma função curry de dois
 * parâmetros, para n parâmetros haverá n chamadas para a função Function<X,Y>:
 * 
 * 
 * @need https://www.javatuples.org/
 * @need https://github.com/javatuples/javatuples
 * 
 * @download https://jar-download.com/artifacts/org.javatuples/javatuples/1.2/source-code
 *
 *
 * @author Benefrancis
 */
public class Currying {

	public static void main(String[] args) {

		// Fórmula para caldulo da Soma das Raizes
		Function<Integer, Function<Integer, Integer>> raizQuadrada = x -> y -> x * x + y * y;

		// @formatter:off
 		List<Integer> raizes = Arrays.asList(new Pair<Integer, Integer>(1, 5), new Pair<Integer, Integer>(2, 3))
				.stream()
				.map(a -> raizQuadrada.apply(a.getValue0()).apply(a.getValue1()))
				.collect(Collectors.toList());
 		// @formatter:on

		// Imprimindo os resultados das raizes
		for (Integer i : raizes) {
			System.out.print(" [" + i + "] ");
		}
	}
}
