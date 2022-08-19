package br.com.benefrancis.generics;

import java.util.Random;

public class Sorter<T> {

	public Sorter() {
		super();
	}

	public T sortear(T[] valores) {
		Random r = new Random();
		return valores[r.nextInt(valores.length)];
	}

}
