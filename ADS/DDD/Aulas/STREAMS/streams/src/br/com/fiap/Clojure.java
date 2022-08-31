package br.com.fiap;

import java.util.function.Function;

public class Clojure {

	private static Integer a = 100;

	static Function<Integer, Integer> add100 = b -> b + a;

	public static void main(String[] args) {

		// Aplica esta função ao argumento em questão.
		System.out.println(add100.apply(9));

		// Não poderia permitir a mudança.Não esqueça de declarar a como final
		a = 101;

		System.out.println(add100.apply(9));

	}

}
