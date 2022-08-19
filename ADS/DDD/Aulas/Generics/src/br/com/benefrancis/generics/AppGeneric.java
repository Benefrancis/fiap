package br.com.benefrancis.generics;

import java.util.Scanner;

public class AppGeneric {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);
		System.out.println("Informe a quantidade de itens para o sorteio:");
		int qtd = sc.nextInt();

		Scanner scanner = new Scanner(System.in);
		System.out.println("Informe os valores a serem sorteados:");

		String[] valores = new String[qtd];

		for (int i = 0; i < qtd; i++) {
			valores[i] = scanner.nextLine();
		}
		System.out.println("Foram informados os seguintes valores: ");

		for (String i : valores) {
			System.out.print("[" + i + "] ");
		}
				
		System.out.println("\nO valor sorteado foi:  " + new  Sorter<>().sortear(valores));
		scanner.close();
		sc.close();
	}
}
