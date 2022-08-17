package br.com.benefrancis.generics;

import java.util.Scanner;

public class GenericApp {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);
		System.out.println("Informe a quantidade de itens para o sorteio:");
		int qtd = sc.nextInt();

		Scanner scanner = new Scanner(System.in);
		System.out.println("Informe os valores a serem sorteados:");

		Sorter<String> sorte = new Sorter<String>(new String[qtd]);
		for (int i = 0; i < qtd; i++) { sorte.getValores()[i] = scanner.nextLine(); }
		System.out.println("Foram informados os seguintes valores: ");
		
		for (String i : sorte.getValores()) { System.out.print("[" + i + "] "); }
		System.out.println("\nO valor sorteado foi:  " + sorte.sortear());
		
		scanner.close();
		sc.close();

	}
}
