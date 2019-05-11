package edu.bjtu.oauth2.repository;

import edu.bjtu.oauth2.domain.Credentials;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by ahmed on 21.5.18.
 */
public interface CredentialRepository extends JpaRepository<Credentials,Long> {
    Credentials findByName(String name);
}
