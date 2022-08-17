package br.com.benefrancis.generics;

import java.util.Scanner;

public class App {
	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		System.out.println("Informe a quantidade de itens para o sorteio:");

		int qtd = sc.nextInt();

		System.out.println("Informe os valores a serem sorteados:");

		float[] valores = new float[qtd];

		for (int i = 0; i < qtd; i++) {
			if (sc.hasNextFloat()) {
				valores[i] = sc.nextFloat();
			}
		}

		System.out.println("Foram informados os seguintes valores: ");
		for (float i : valores) { System.out.print("[" + i + "] "); }

		FloatSorter sorte = new FloatSorter(valores);

		System.out.println("\nO valor sorteado foi:  " + sorte.sortear());

		sc.close();
	}
}
