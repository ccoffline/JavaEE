package edu.bjtu.ee4j.gym.repository;

import edu.bjtu.ee4j.gym.model.post.Post;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PostRepository extends JpaRepository<Post, Long> {

    Post findById(long id);

    List<Post> getPostsByAuthorId(int id);
}
