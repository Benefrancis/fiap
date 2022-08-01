package br.com.benefrancis.documento;

import java.util.Date;

import br.com.benefrancis.documento.model.CPF;
import br.com.benefrancis.documento.model.RG;


/**
 * Onde a aplicação se inicia
 * 
 * Sistema para cadastramento de documentos do Brasil.
 * 
 * No Brasil os documentos sao emitidos pelos entes da Federacao:
 * 
 * <ul>
 * <li>Uniao</li>
 * <li>Estados</li>
 * <li>Municipios</li>
 * </ul>
 * 
 * @author Francis
 * @author Turma de TADS da FIAP
 * @version 1.0
 * @since 1.0
 */
public class App {

	/**
	 * É aqui que o programa inicia. Podemos receber alguns argumentos
	 * 
	 * 
	 * @param args
	 */
	public static void main(String[] args) {
		
		CPF doc = new CPF();
		doc.setNumero("24878891873");
		
		System.out.println(doc);
		
		
		RG rg = new RG();
		rg.setNumero("123456");
		rg.setDataEmissao(new Date());
		rg.setOrgaoEmissor("SSP");
		rg.setUF("SP");
		
		
		System.out.println(rg);
	}

}
