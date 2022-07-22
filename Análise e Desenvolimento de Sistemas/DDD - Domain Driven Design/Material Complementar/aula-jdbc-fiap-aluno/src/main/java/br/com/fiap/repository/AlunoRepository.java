package br.com.fiap.repository;

import java.sql.Connection;
import java.util.List;

import br.com.fiap.entity.Aluno;

public interface AlunoRepository {

	public Connection open();

	public void close();

	public List<Aluno> findAll();

	public Aluno findById(Long id);

	public List<Aluno> findByNome(String nome);

	public boolean salvar(Aluno aluno);

}
