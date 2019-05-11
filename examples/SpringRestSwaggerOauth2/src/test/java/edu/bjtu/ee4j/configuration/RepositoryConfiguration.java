package edu.bjtu.ee4j.configuration;

import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@EnableAutoConfiguration
@EntityScan(basePackages = {"edu.bjtu.ee4j.domain"})
@EnableJpaRepositories(basePackages = {"edu.bjtu.ee4j.repositories"})
@EnableTransactionManagement
public class RepositoryConfiguration {
}
