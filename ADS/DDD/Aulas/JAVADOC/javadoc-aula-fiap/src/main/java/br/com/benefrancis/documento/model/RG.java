package br.com.benefrancis.documento.model;

import java.util.Date;

/**
 * Documento Brasileiro do estado que deve ser utilizado para identificacao de
 * pessoas fisicas
 * 
 * @author Francis
 * @version 1.0
 * @since 1.0
 * 
 */
public class RG implements DocumentoEstadual {

	private String numero;

	private String orgaoEmissor;

	private Date dataEmissao;

	public String getOrgaoEmissor() {
		return orgaoEmissor;
	}

	public void setOrgaoEmissor(String orgaoEmissor) {
		this.orgaoEmissor = orgaoEmissor;
	}

	public Date getDataEmissao() {
		return dataEmissao;
	}

	public void setDataEmissao(Date dataEmissao) {
		this.dataEmissao = dataEmissao;
	}

	public String getUF() {
		return UF;
	}

	public void setUF(String uF) {
		UF = uF;
	}

	public void setNumero(String numero) {
		this.numero = numero;
	}

	private String UF;

	@Override
	public String getNumero() {
		return numero;
	}

	@Override
	public String toString() {
		return "RG [numero=" + numero + ", orgaoEmissor=" + orgaoEmissor + ", dataEmissao=" + dataEmissao + ", UF=" + UF
				+ "]";
	}

}
