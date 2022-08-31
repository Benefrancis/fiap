package br.com.fiap;

import java.util.OptionalDouble;
import java.util.function.IntUnaryOperator;
import java.util.stream.IntStream;

/**
 * Converte temperatura de Fahrenheit para Celsios. 
 * Respeitando a fórmula: 
 * (80 * °F − 32) × 5/9 = 26,667 °C
 * 
 * @author Benefrancis
 *
 */
public class FahrenheitToCelsiosLambida {

	public static void main(String[] args) {

		// A fórmula:
		IntUnaryOperator convF2C = x -> (x - 32) * 5 / 9;

		// Convertendo as temperaturas em Celsios para Fahrenheit e devolvendo a média
		OptionalDouble resultado = IntStream.of(70, 75, 80, 90).map(convF2C).average();

		// Imprimindo a média
		System.out.println("Temperatura média: " + resultado.getAsDouble() + " ºC");

		// Imprimindo o resultado de um valor específico
		System.out.println("Temperatura: " + convF2C.applyAsInt(80) + " ºC");

	}

}


