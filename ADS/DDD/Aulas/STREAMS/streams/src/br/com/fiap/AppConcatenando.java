package br.com.fiap;

import java.util.stream.Stream;

public class AppConcatenando {
	
	public static void main(String[] args) {
		
		Stream<Integer> firstStream = Stream.of(1, 2, 3, 4, 5, 6);
		
		Stream<Integer> secondStream = Stream.of(4, 5, 6, 7, 8, 9);
		
		Stream.concat(firstStream, secondStream).distinct().forEach(System.out::print);
		
	}
}
