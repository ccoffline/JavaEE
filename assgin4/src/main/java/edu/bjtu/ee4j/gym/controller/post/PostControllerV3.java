package edu.bjtu.ee4j.gym.controller.post;

import edu.bjtu.ee4j.gym.exception.PostNotFoundException;
import edu.bjtu.ee4j.gym.model.post.Post;
import edu.bjtu.ee4j.gym.service.PostReactiveService;
import edu.bjtu.ee4j.gym.service.PostService;
import edu.bjtu.ee4j.gym.transaction.rateLimit.RateLimit;
import io.swagger.annotations.ApiOperation;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.CachePut;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.web.bind.annotation.*;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;

import java.util.List;

@RestController
@RequestMapping("/post/3.0")
public class PostControllerV3 {

    private static final Logger log = LoggerFactory.getLogger(PostControllerV3.class);

    private final PostReactiveService postService;

    public PostControllerV3(PostReactiveService postService) {
        this.postService = postService;
    }

    @ApiOperation(value = "Search a post with an ID", response = Post.class)
    @Cacheable(value = "post-single", key = "#id")
    @GetMapping("/{id}")
    public Mono<Post> getPostByID(@PathVariable long id) throws PostNotFoundException {
        log.info("get post with id {}", id);
        return postService.getPostById(id);
    }

    @ApiOperation(value = "create a post", response = Post.class)
    @RateLimit(perSecond = 3)
    @CachePut(value = "post-single", key = "#post.id")
    @PostMapping("/")
    public Mono<Post> createPost(@RequestBody Post post) throws PostNotFoundException {
        log.info("create post with {}", post);
        return postService.createPost(post);
    }

    @ApiOperation(value = "update a post and return the result", response = Boolean.class)
    @CachePut(value = "post-single", key = "#post.id")
    @PutMapping("/{id}")
    public Mono<Post> updatePostByID(@PathVariable long id, @RequestBody Post post) throws PostNotFoundException {
        post.setId(id);
        log.info("update post with {}", post);
        return postService.updatePost(post);
    }

    @ApiOperation(value = "delete a post", response = Boolean.class)
    @CacheEvict(value = "post-single", key = "#id")
    @DeleteMapping("/{id}")
    public Mono<Void> deletePostByID(@PathVariable long id) throws PostNotFoundException {
        log.info("delete post with id {}", id);
        return postService.deletePostById(id);
    }

    @ApiOperation(value = "get top ten posts", response = Post.class)
    @Cacheable(value = "post-top")
    @GetMapping("/top")
    public Flux<List<Post>> getTopPosts() {
        log.info("get top ten posts");
        return postService.getTopSharedPosts(1, 10);
    }
}

