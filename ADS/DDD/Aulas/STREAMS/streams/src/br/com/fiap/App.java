package br.com.fiap;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.IntStream;

public class App {

	public static void antesDoJava8() {

		// Inserindo itens na lista de inteiros:
		List<Integer> list = new ArrayList<Integer>();
		for (int i = 0; i < 100000; i++) {
			list.add(i);
		}

		// Tendo como elementos os itens da lista anterior.
		// Agora, estamos inserindo itens na lista de pares inteiros.
		List<Integer> pares = new ArrayList<Integer>();
		for (int val : list) {
			// Pegando somente os pares
			if (val % 2 == 0)
				pares.add(val);
		}

		for (int val : pares) {
			System.out.print(val);
		}

	}

	public static void depoisDoJava8() {
		IntStream.range(0, 100000).filter(i -> i % 2 == 0).forEach(System.out::print);
	}

	public static void main(String[] args) {
		antesDoJava8();
		depoisDoJava8();
	}
}

