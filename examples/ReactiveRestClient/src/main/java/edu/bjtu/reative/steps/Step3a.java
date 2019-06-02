package edu.bjtu.reative.steps;

import org.springframework.web.reactive.function.client.WebClient;

import edu.bjtu.reative.Person;

public class Step3a {

	private static WebClient client = WebClient.create("http://localhost:8080");

	public static void main(String[] args) {

		client.get().uri("/persons/events").retrieve().bodyToFlux(Person.class).take(4L).blockFirst();
	}

}
