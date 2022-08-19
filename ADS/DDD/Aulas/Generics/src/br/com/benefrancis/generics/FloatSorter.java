package br.com.benefrancis.generics;

import java.util.Random;

public class FloatSorter {

	float[] valores;

	public FloatSorter(float[] valores) {
		super();
		this.valores = valores;
	}

	public double sortear() {
		Random r = new Random();
		return valores[r.nextInt(valores.length)];
	}
}
