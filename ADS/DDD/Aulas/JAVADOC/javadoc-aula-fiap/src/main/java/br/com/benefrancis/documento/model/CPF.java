package br.com.benefrancis.documento.model;

/**
 * Classe que representará o CPF na minha aplicação
 * 
 * @author Francis
 *
 */
public class CPF implements DocumentoFederalPessoaFisica {

	private String numero;

	@Override
	public String getNumero() {
		return numero;
	}

	/**
	 * Scrip para validação do CPF
	 * 
	 * @param numero
	 * @return
	 */
	public static boolean isValid(String numero) {
		// TODO script para validar CPF
		return false;
	}

	public void setNumero(String numero) {
		this.numero = numero;
	}

	@Override
	public String toString() {
		return "CPF [numero=" + numero + "]";
	}

}
