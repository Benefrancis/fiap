package br.com.fiap;

import java.util.stream.Stream;

public class AppString {
	public static void main(String[] args) {
		Stream.of('a', 'z').forEach(System.out::print);
	}
}
