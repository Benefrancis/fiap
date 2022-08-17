package br.com.fiap;

import java.util.Arrays;
import java.util.Random;

/**
 * Comparando o tempo de cada técnica para copia do conteúdo de um array a para
 * outro array b
 * 
 * @author Benefrancis
 * 
 * @version 1.0
 * @since 1.0
 */
public class App {

	public static void main(String[] args) {
		/**
		 * Declarando e inicializando o primeiro array
		 */
		int[] a = new int[9999999];

		/**
		 * Declarando e inicializando o segundo array com o mesmo tamanho do primeiro
		 * array
		 */
		int b[] = new int[a.length];

		/**
		 * A classe Randon é a responsável por realizar sorteios
		 * 
		 */
		Random r = new Random();

		/**
		 * Se caso desejar que os valores dos arrays sejam imprimidos no console, sete a
		 * variável como true
		 */
		boolean imprimeValores = false;

		// inserindo valores aleatórios em a
		for (int i = 0; i < a.length; i++) {
			a[i] = r.nextInt(a.length);
		}

		copyComFor(a, b, imprimeValores);
		copyComClone(a, b, imprimeValores);
		copyComSystem(a, b, imprimeValores);
		copyComArrays(a, b, imprimeValores);

	}

	/**
	 * O método Arrays.copyOf funciona de maneira similar ao método clone,
	 * oferecendo apenas o recurso de possibilitar a cópia dos n primeiros elementos
	 * do vetor origem.
	 * 
	 * @see Arrays#copyOf
	 * 
	 * @param a              vetor de origem
	 * @param b              vetor de destino
	 * @param imprimeValores deseja ver os valores impressos no console?
	 * 
	 * @version 1.0
	 * @since 1.0
	 */
	private static void copyComArrays(int[] a, int[] b, boolean imprimeValores) {
		long inicio, fim, total;
		inicio = System.currentTimeMillis();

		b = Arrays.copyOf(a, a.length);
		fim = System.currentTimeMillis();
		total = fim - inicio;
		// imprimindo em tela os valores dos dois arrays
		if (imprimeValores) {
			for (int i = 0; i < a.length; i++) {
				System.out.println("[ " + a[i] + " ]" + " [ " + b[i] + " ]");
			}
		}

		System.out.println("Tempo total [ copyComArrays ]: " + total + " ms");
	}

	/**
	 * Este método não reserva espaço em memória para o vetor destino (ou seja, ele
	 * exige que este espaço já tenha sido alocado, o que foi feito logo no início
	 * do nosso programa).
	 * 
	 * Este método exige que o array de destino ja tenha sido iniciado com o
	 * construtor new.
	 * 
	 * É indicado utilizar no caso em que precisaremos copiar muitos vetores para um
	 * mesmo vetor temporário, pois nesse caso basta reservar espaço uma vez para o
	 * vetor temporário e usá-lo sempre que for preciso copiar qualquer array.
	 * 
	 * @see System#arraycopy
	 * 
	 * @param a              vetor de origem
	 * @param b              vetor de destino
	 * @param imprimeValores deseja ver os valores impressos no console?
	 * 
	 * @version 1.0
	 * @since 1.0
	 */
	private static void copyComSystem(int[] a, int[] b, boolean imprimeValores) {

		long inicio, fim, total;

		inicio = System.currentTimeMillis();

		// Copiando com o método estático arraycopy da classe System.
		System.arraycopy(a, 0, b, 0, a.length);

		fim = System.currentTimeMillis();
		total = fim - inicio;
		// imprimindo em tela os valores dos dois arrays
		if (imprimeValores) {
			for (int i = 0; i < a.length; i++) {
				System.out.println("[ " + a[i] + " ]" + " [ " + b[i] + " ]");
			}
		}

		System.out.println("Tempo total [ copyComSystem ]: " + total + " ms");
	}

	/**
	 * A sintaxe do método clone() é mais econômica e ele faz a duplicação do
	 * conteúdo do vetor origem automaticamente (não há necessidade de reservar
	 * espaço para o vetor destino) e não requer nenhum parâmetro. Porém se queremos
	 * copiar apenas parte do vetor origem não vale a pena – é melhor usar
	 * System.arraycopy. Se precisamos realizar diversas cópias para um vetor
	 * temporário instanciado uma única vez, também não vale a pena usar o método
	 * clone().
	 * 
	 * @see Object#clone
	 * 
	 * @param a              array de origem
	 * @param b              array de destino
	 * @param imprimeValores deseja ver os valores impressos no console?
	 */
	private static void copyComClone(int[] a, int[] b, boolean imprimeValores) {
		long inicio, fim, total;
		inicio = System.currentTimeMillis();

		// Copiando com o método clone do array.
		b = a.clone();

		fim = System.currentTimeMillis();
		total = fim - inicio;
		// imprimindo em tela os valores dos dois arrays
		if (imprimeValores) {
			for (int i = 0; i < a.length; i++) {
				System.out.println("[ " + a[i] + " ]" + " [ " + b[i] + " ]");
			}
		}
		System.out.println("Tempo total [ copyComClone  ]: " + total + " ms");
	}

	/**
	 * A abordagem que faz a cópia usando o comando for é mais tradicional e tão
	 * eficiente quanto qualquer outra.
	 * 
	 * Este método exige que o array ja tenha sido iniciado com o construtor new.
	 * 
	 * É indicado utilizar no caso em que precisaremos copiar muitos vetores para um
	 * mesmo vetor temporário, pois nesse caso basta reservar espaço uma vez para o
	 * vetor temporário e usá-lo sempre que for preciso copiar qualquer array.
	 * 
	 * @param a              vetor de origem
	 * @param b              vetor de destino
	 * @param imprimeValores deseja ver os valores impressos no console?
	 * 
	 * @version 1.0
	 * @since 1.0
	 */
	private static void copyComFor(int[] a, int[] b, boolean imprimeValores) {
		long inicio, fim, total;
		inicio = System.currentTimeMillis();
		// Copiando de a para b
		for (int i = 0; i < a.length; i++) {
			b[i] = a[i];
		}

		fim = System.currentTimeMillis();
		total = fim - inicio;
		// imprimindo em tela os valores dos dois arrays
		if (imprimeValores) {
			for (int i = 0; i < a.length; i++) {
				System.out.println("[ " + a[i] + " ]" + " [ " + b[i] + " ]");
			}
		}
		System.out.println("Tempo total [ copyComFor    ]: " + total + " ms");
	}
}
