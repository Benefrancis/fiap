package br.com.fiap;

import java.util.Scanner;

import br.com.fiap.entity.Aluno;
import br.com.fiap.service.AlunoService;
import br.com.fiap.service.Service;

public class Inicio {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		Service service = new AlunoService();
		selectOperation(service, sc);
		sc.close();
	}

	private static void selectOperation(Service service, Scanner sc) {
		short operacao = operacaoDesejava(sc);

		while (operacao == 0 || operacao > 4) {
			operacao = operacaoDesejava(sc);
		}

		switch (operacao) {
		case 1:
			salvar(service);
			break;
		case 2:
			findAll(service);
			break;
		case 3:
			findById(service, sc);
			break;
		case 4:
			System.out.println("Bye");
			break;
		default:
			break;
		}
	}

	private static short operacaoDesejava(Scanner sc) {

		short op;

		System.out.println("Informe a Operação Desejada:");
		System.out.println("1 - Salvar um novo Aluno");
		System.out.println("2 - Listar todos os Alunos cadastrados");
		System.out.println("3 - Buscar Aluno pelo id");
		System.out.println("4 - sair");

		op = sc.nextShort();

		return op;
	}

	private static void findAll(Service service) {
		for (Aluno a : service.findAll()) {
			System.out.println(a);
		}

	}

	private static void salvar(Service service) {
		Aluno aluno = inputarDados();
		// Salvar os dados de um aluno
		boolean salvo = service.save(aluno);

		if (salvo) {
			System.out.println("Aluno salvo com sucesso!");
		} else {
			System.out.println("Erro ao salvar o aluno");
		}
	}

	private static void findById(Service service, Scanner sc) {

		Long id = null;

		while (id == null) {
			System.out.println("Informe o Id do Aluno");
			id = sc.nextLong();
		}

		Aluno aluno = service.findById(id);

		if (aluno != null) {
			System.out.println(aluno);
		} else {
			System.out.println("Aluno não enontrado");
		}

	}

	public static Aluno inputarDados() {
		Scanner scanner = new Scanner(System.in);
		String nome = "";
		while (nome.isEmpty()) {
			System.out.println("Insira o nome do Aluno");
			nome = scanner.nextLine();
		}
		scanner.close();
		Aluno aluno = new Aluno();
		aluno.setNome(nome);
		return aluno;
	}
}
