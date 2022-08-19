package br.com.benefrancis.generics;

import java.util.Scanner;

public class AppInt {
	
	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);
		
		System.out.println("Informe a quantidade de itens para o sorteio:");
		int qtd = sc.nextInt();

		System.out.println("Informe os valores a serem sorteados:");

		int[] valores = new int[qtd];

		for (int i = 0; i < qtd; i++) {
			if (sc.hasNextInt()) {
				valores[i] = sc.nextInt();
			}
		}

		System.out.println("Foram informados os seguintes valores: ");
		for (int i : valores) {
			System.out.print("[" + i + "] ");
		}

		IntSorter sorte = new IntSorter(valores);

		System.out.println("\nO valor sorteado foi:  " + sorte.sortear());

		sc.close();
	}
}
