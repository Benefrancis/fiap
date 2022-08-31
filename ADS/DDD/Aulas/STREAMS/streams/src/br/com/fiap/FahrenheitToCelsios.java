package br.com.fiap;

import java.util.OptionalDouble;
import java.util.stream.IntStream;

public class FahrenheitToCelsios {

	public static void main(String[] args) {

		// Convertendo as temperaturas em Celsios para Fahrenheit e devolvendo a média
		OptionalDouble resultado = IntStream.of(70, 75, 80, 90).map(x -> (x - 32) * 5 / 9).average();

		// Imprimindo a média
		System.out.println(resultado);

	}

}

