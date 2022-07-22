package br.com.fiap.service;

import java.util.List;

import br.com.fiap.entity.Aluno;
import br.com.fiap.repository.AlunoOracleRepository;
import br.com.fiap.repository.AlunoRepository;

public interface Service {
	
	public AlunoRepository reposirory = new AlunoOracleRepository();

	public List<Aluno> findAll();

	public Aluno findById(Long id);
	
	public List<Aluno> findByNome(String nome);

	public boolean save(Aluno aluno);

}
