package edu.bjtu.ee4j.gym.service;

import edu.bjtu.ee4j.gym.model.Post;
import edu.bjtu.ee4j.gym.model.User;
import edu.bjtu.ee4j.gym.repository.PostRepository;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PostService {

    private final PostRepository postRepository;

    public PostService(PostRepository postRepository) {
        this.postRepository = postRepository;
    }

    public Post getPostById(long id) {
        return postRepository.findById(id);
    }

    public List<Post> getPostsByAuthor(int userId) {
        return postRepository.getPostsByAuthorId(userId);
    }

    public void createPost(Post post) {
        post.setId(null);
        postRepository.save(post);
    }

    public void updatePost(Post post) {
        postRepository.save(post);
    }

    public void deletePostById(long id) {
        postRepository.deleteById(id);
    }

    private static final Sort sharesSortedByDesc = Sort.by(Sort.Direction.DESC, "shares");

    public List<Post> getTopSharedPosts(int page, int size) {
        return postRepository.findAll(PageRequest.of(page - 1, size, sharesSortedByDesc)).getContent();
    }
}
