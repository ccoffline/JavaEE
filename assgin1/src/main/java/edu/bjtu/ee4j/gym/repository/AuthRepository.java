package edu.bjtu.ee4j.gym.repository;

import edu.bjtu.ee4j.gym.model.UserAuth;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AuthRepository extends JpaRepository<UserAuth, String> {

    UserAuth findByUsername(String username);
}
