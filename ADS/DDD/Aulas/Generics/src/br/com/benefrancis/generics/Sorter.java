package br.com.benefrancis.generics;

import java.util.Random;

public class Sorter<T> {

	T[] valores;

	public Sorter(T[] valores) {
		super();
		this.valores = valores;
	}

	public T[] getValores() {
		return valores;
	}

	public T sortear() {
		Random r = new Random();
		return valores[r.nextInt(valores.length)];
	}

}
