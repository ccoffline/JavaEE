package edu.bjtu.reative.steps;

import java.time.Duration;
import java.time.Instant;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.web.reactive.function.client.WebClient;

import edu.bjtu.reative.Person;

import reactor.core.publisher.Flux;

public class Step2d {

	private static final Logger logger = LoggerFactory.getLogger(Step2d.class);

	private static WebClient client = WebClient.create("http://localhost:8080?delay=2");

	public static void main(String[] args) {

		Instant start = Instant.now();

		Flux.range(1, 3).flatMap(i -> client.get().uri("/person/{id}", i).exchange().flatMap(response -> {
			HttpStatus status = response.statusCode();
			HttpHeaders headers = response.headers().asHttpHeaders();
			logger.debug("Got status=" + status + ", headers=" + headers);
			return response.bodyToMono(Person.class);
		})).blockLast();

		logTime(start);
	}

	private static void logTime(Instant start) {
		logger.debug("Elapsed time: " + Duration.between(start, Instant.now()).toMillis() + "ms");
	}

}
