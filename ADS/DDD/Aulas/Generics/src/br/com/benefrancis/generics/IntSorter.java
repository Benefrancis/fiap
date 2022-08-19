package br.com.benefrancis.generics;

import java.util.Random;

public class IntSorter {

	int[] valores;

	public IntSorter(int[] valores) {
		super();
		this.valores = valores;
	}

	public int sortear() {
		Random r = new Random();
		return valores[r.nextInt(valores.length)];
	}

}
