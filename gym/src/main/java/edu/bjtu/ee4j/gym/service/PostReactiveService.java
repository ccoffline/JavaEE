package edu.bjtu.ee4j.gym.service;

import edu.bjtu.ee4j.gym.model.post.Post;
import edu.bjtu.ee4j.gym.repository.PostReactiveRepository;
import edu.bjtu.ee4j.gym.repository.PostRepository;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;

import java.util.List;

@Service
public class PostReactiveService {

    private final PostReactiveRepository postRepository;

    public PostReactiveService(PostReactiveRepository postRepository) {
        this.postRepository = postRepository;
    }

    public Mono<Post> getPostById(long id) {
        return postRepository.findById(id).
                switchIfEmpty(Mono.error(new Exception("No Blog found with Id: " + id)));
    }

    public Mono<Post> createPost(Post post) {
        post.setId(null);
        return postRepository.insert(post);
    }

    public Mono<Post> updatePost(Post post) {
        return postRepository
                .findById(post.getId())
                .doOnSuccess(p -> {
                            postRepository.save(post).subscribe();
                        }
                );
    }

    public Mono<Void> deletePostById(long id) {
        return postRepository.deleteById(id);
    }

    public Flux<List<Post>> getTopSharedPosts(int page, int size) {
        return postRepository.findAll().buffer(10, 10 * (page - 1));
    }
}
