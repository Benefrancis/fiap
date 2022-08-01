package br.com.benefrancis.documento.model;

public class CNPJ implements DocumentoFederalPessoaJuridica {

	private String numero;

	@Override
	public String getNumero() {
		return numero;
	}

	/**
	 * Scrip para validação do CNPJ
	 * 
	 * @param numero
	 * @return
	 */
	public static boolean isValid(String numero) {
		// TODO script para validar CNPJ
		return false;
	}

	public void setNumero(String numero) {
		this.numero = numero;
	}
	
	
}
