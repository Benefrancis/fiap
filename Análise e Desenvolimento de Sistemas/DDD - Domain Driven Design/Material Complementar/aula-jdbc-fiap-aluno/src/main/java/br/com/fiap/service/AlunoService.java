package br.com.fiap.service;

import java.util.List;

import br.com.fiap.entity.Aluno;

public class AlunoService implements Service {

	@Override
	public List<Aluno> findAll() {
		return reposirory.findAll();
	}

	@Override
	public Aluno findById(Long id) {
		return reposirory.findById(id);
	}

	@Override
	public List<Aluno> findByNome(String nome) {
		return reposirory.findByNome(nome);
	}

	@Override
	public boolean save(Aluno aluno) {
		return reposirory.salvar(aluno);
	}
}
