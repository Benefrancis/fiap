package br.com.fiap.aula_jdbc_fiap;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

@SuppressWarnings("unused")
public class App {

	public static void main(String[] args) {

		String url = "jdbc:oracle:thin:@localhost:1521:xe";

		String user = "system";

		String pass = "root";

		try {
			Class.forName("oracle.jdbc.OracleDriver");

			Connection conn = DriverManager.getConnection(url, user, pass);

			Scanner sc = new Scanner(System.in);

			findByName(conn, sc);

			conn.close();
			sc.close();

		} catch (ClassNotFoundException e) {
			System.out.println("não foi possível encontrar do Driver JDBC: " + e.getMessage());
		} catch (SQLException e) {
			System.out.println("Não foi possível conectar ao database: " + e.getMessage());
		}
		System.out.println("Programa encerrado com sucesso!");
	}

	public static boolean salvar(Connection conn, Scanner sc) {

		System.out.println("Informa o nome do aluno: ");

		String nome = sc.nextLine();

		String sql = "INSERT INTO aluno values(SQ_ALUNO.nextval,?)";

		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, nome);
			ps.execute();
			System.out.println("Aluno salvo com sucesso!");
			return true;
		} catch (SQLException e) {
			System.out.println("Não foi possível salvar o aluno: " + e.getMessage());
		}
		return false;
	}

	private static void findByName(Connection conn, Scanner sc) throws SQLException {

		System.out.println("Informa o nome do aluno: ");

		String nome = sc.nextLine();

		String sql = "SELECT * FROM ALUNO where upper(nome) =  '" + nome.toUpperCase() + "'";

		ResultSet rs = conn.createStatement().executeQuery(sql);

		if (rs.isBeforeFirst()) {
			while (rs.next()) {
				System.out.println(rs.getString("NOME"));
			}
		} else {
			System.out.println("Não foi possível encontrar aluno com o nome informado");
		}
	}

	private static void findByNameStartsWith(Connection conn, Scanner sc) throws SQLException {

		System.out.println("Informa o nome do aluno: ");

		String nome = sc.nextLine();

		String sql = "SELECT * FROM ALUNO where upper(nome) like ?";

		ResultSet rs;

		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, nome.toUpperCase() + "%");

		rs = ps.executeQuery();
		if (rs.isBeforeFirst()) {
			while (rs.next()) {
				System.out.println(rs.getString("NOME"));
			}
		} else {
			System.out.println("Não foi possível encontrar Aluno com o parâmetro informado!");
		}
	}

	private static void findById(Connection conn, Scanner sc) throws SQLException {
		System.out.println("Digite o Id do Aluno: ");

		Long id = sc.nextLong();

		String sql = "SELECT * FROM ALUNO WHERE ID=?";

		ResultSet rs;

		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setLong(1, id);

		rs = ps.executeQuery();

		if (rs.isBeforeFirst()) {
			while (rs.next()) {
				System.out.println(rs.getString("nome"));
			}
		} else {
			System.out.println("Não foi possível encontrar Aluno com o ID informado");
		}
	}

	private static void findAll(Connection conn) throws SQLException {

		String sql = "SELECT * FROM ALUNO";

		ResultSet rs = conn.createStatement().executeQuery(sql);

		while (rs.next()) {
			System.out.println(rs.getString("nome"));
		}
	}

}
