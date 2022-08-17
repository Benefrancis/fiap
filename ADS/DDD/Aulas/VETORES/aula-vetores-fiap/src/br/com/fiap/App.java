package br.com.fiap;

import java.util.Arrays;
import java.util.Random;

/**
 * Comparando o tempo de cada t�cnica para copia do conte�do de um array a para
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
		 * A classe Randon � a respons�vel por realizar sorteios
		 * 
		 */
		Random r = new Random();

		/**
		 * Se caso desejar que os valores dos arrays sejam imprimidos no console, sete a
		 * vari�vel como true
		 */
		boolean imprimeValores = false;

		// inserindo valores aleat�rios em a
		for (int i = 0; i < a.length; i++) {
			a[i] = r.nextInt(a.length);
		}

		copyComFor(a, b, imprimeValores);
		copyComClone(a, b, imprimeValores);
		copyComSystem(a, b, imprimeValores);
		copyComArrays(a, b, imprimeValores);

	}

	/**
	 * O m�todo Arrays.copyOf funciona de maneira similar ao m�todo clone,
	 * oferecendo apenas o recurso de possibilitar a c�pia dos n primeiros elementos
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
	 * Este m�todo n�o reserva espa�o em mem�ria para o vetor destino (ou seja, ele
	 * exige que este espa�o j� tenha sido alocado, o que foi feito logo no in�cio
	 * do nosso programa).
	 * 
	 * Este m�todo exige que o array de destino ja tenha sido iniciado com o
	 * construtor new.
	 * 
	 * � indicado utilizar no caso em que precisaremos copiar muitos vetores para um
	 * mesmo vetor tempor�rio, pois nesse caso basta reservar espa�o uma vez para o
	 * vetor tempor�rio e us�-lo sempre que for preciso copiar qualquer array.
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

		// Copiando com o m�todo est�tico arraycopy da classe System.
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
	 * A sintaxe do m�todo clone() � mais econ�mica e ele faz a duplica��o do
	 * conte�do do vetor origem automaticamente (n�o h� necessidade de reservar
	 * espa�o para o vetor destino) e n�o requer nenhum par�metro. Por�m se queremos
	 * copiar apenas parte do vetor origem n�o vale a pena � � melhor usar
	 * System.arraycopy. Se precisamos realizar diversas c�pias para um vetor
	 * tempor�rio instanciado uma �nica vez, tamb�m n�o vale a pena usar o m�todo
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

		// Copiando com o m�todo clone do array.
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
	 * A abordagem que faz a c�pia usando o comando for � mais tradicional e t�o
	 * eficiente quanto qualquer outra.
	 * 
	 * Este m�todo exige que o array ja tenha sido iniciado com o construtor new.
	 * 
	 * � indicado utilizar no caso em que precisaremos copiar muitos vetores para um
	 * mesmo vetor tempor�rio, pois nesse caso basta reservar espa�o uma vez para o
	 * vetor tempor�rio e us�-lo sempre que for preciso copiar qualquer array.
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
