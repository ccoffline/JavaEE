package edu.bjtu.ee4j.gym.repository;

import edu.bjtu.ee4j.gym.model.post.Post;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.mongodb.repository.ReactiveMongoRepository;
import org.springframework.stereotype.Repository;
import reactor.core.publisher.Mono;

import java.util.List;

@Repository
public interface PostReactiveRepository extends ReactiveMongoRepository<Post, Long> {

    Mono<Post> findById(long id);
}
