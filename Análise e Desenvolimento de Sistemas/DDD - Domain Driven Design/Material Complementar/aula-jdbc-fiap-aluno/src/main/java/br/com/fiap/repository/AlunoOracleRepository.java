package br.com.fiap.repository;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import br.com.fiap.entity.Aluno;

public class AlunoOracleRepository implements AlunoRepository {
	
	private final String STRING_DE_CONEXAO = "jdbc:oracle:thin:@localhost:1521:xe";

	private final String USUARIO = "system";

	private final String SENHA = "root";
	
	protected Connection conn;

	protected Statement stmt;

	public AlunoOracleRepository() {
		super();

		try {
			Class.forName("oracle.jdbc.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	@Override
	public Connection open() {
		try {
			return DriverManager.getConnection(STRING_DE_CONEXAO, USUARIO, SENHA);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public void close() {

		if (conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

	}

	@Override
	public List<Aluno> findAll() {
		conn = open();
		String sql = "SELECT * FROM aluno";
		List<Aluno> alunos = new ArrayList<>();
		Statement st;
		try {
			st = conn.createStatement();
			ResultSet rs = st.executeQuery(sql);

			while (rs.next()) {
				alunos.add(new Aluno(rs.getLong("id"), rs.getString("nome")));
			}
			return alunos;
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return null;
	}

	@Override
	public Aluno findById(Long id) {
		conn = open();

		String sql = "SELECT * FROM aluno where id=?";

		Aluno aluno = null;

		try {

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setLong(1, id);

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				aluno = new Aluno();
				aluno.setId(rs.getLong("id"));
				aluno.setNome(rs.getString("nome"));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return aluno;
	}

	public List<Aluno> findByNome(String nome) {

		conn = open();

		String sql = "SELECT * FROM aluno where nome=?";

		List<Aluno> alunos = null;

		try {

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, nome);

			ResultSet rs = ps.executeQuery();
			alunos = new ArrayList<>();
			if (rs.next()) {
				Aluno aluno = new Aluno();
				aluno.setId(rs.getLong("id"));
				aluno.setNome(rs.getString("nome"));
				alunos.add(aluno);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return alunos;
	}

	@Override
	public boolean salvar(Aluno aluno) {
		conn = open();
		String sql = "INSERT INTO aluno values(SQ_ALUNO.nextval,?)";

		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, aluno.getNome());
			ps.execute();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

}
