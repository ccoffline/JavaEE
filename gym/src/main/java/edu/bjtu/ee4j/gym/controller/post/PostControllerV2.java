package edu.bjtu.ee4j.gym.controller.post;

import edu.bjtu.ee4j.gym.exception.PostNotFoundException;
import edu.bjtu.ee4j.gym.model.post.Post;
import edu.bjtu.ee4j.gym.service.PostService;
import edu.bjtu.ee4j.gym.transaction.rateLimit.RateLimit;
import io.swagger.annotations.ApiOperation;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.CachePut;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/post/v2")
public class PostControllerV2 {

    private static final Logger log = LoggerFactory.getLogger(PostControllerV2.class);

    private final PostService postService;

    public PostControllerV2(PostService postService) {
        this.postService = postService;
    }

    @ApiOperation(value = "Search a post with an ID", response = Post.class)
    @Cacheable(value = "post-single", key = "#id")
    @GetMapping("/{id}")
    public Post getPostByID(@PathVariable long id) throws PostNotFoundException {
        log.info("get post with id {}", id);
        return postService.getPostById(id);
    }

    @ApiOperation(value = "create a post", response = Post.class)
    @RateLimit(perSecond = 3)
    @CachePut(value = "post-single", key = "#post.id")
    @PostMapping("/")
    public Post createPost(@RequestBody Post post) throws PostNotFoundException {
        log.info("create post with {}", post);
        postService.createPost(post);
        return post;
    }

    @ApiOperation(value = "update a post and return the result", response = Post.class)
    @CachePut(value = "post-single", key = "#post.id")
    @PutMapping("/{id}")
    public Post updatePostByID(@PathVariable long id, @RequestBody Post post) throws PostNotFoundException {
        post.setId(id);
        log.info("update post with {}", post);
        postService.updatePost(post);
        return post;
    }

    @ApiOperation(value = "delete a post", response = Post.class)
    @CacheEvict(value = "post-single", key = "#id")
    @DeleteMapping("/{id}")
    public void deletePostByID(@PathVariable long id) throws PostNotFoundException {
        log.info("delete post with id {}", id);
        postService.deletePostById(id);
    }

    @ApiOperation(value = "get top ten posts", response = List.class)
    @Cacheable(value = "post-top")
    @GetMapping("/top")
    public List<Post> getTopPosts() {
        log.info("get top ten posts");
        return postService.getTopSharedPosts(1, 10);
    }
}

