package edu.bjtu.ee4j.gym.controller;

import edu.bjtu.ee4j.gym.exception.PostNotFoundException;
import edu.bjtu.ee4j.gym.model.Post;
import edu.bjtu.ee4j.gym.service.PostService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.CachePut;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/post")
public class PostController {

    private static final Logger log = LoggerFactory.getLogger(PostController.class);

    private final PostService postService;

    public PostController(PostService postService) {
        this.postService = postService;
    }

    private static final long SLEEP_TIME = 1000 * 3;

    private static void sleep() {
        try {
            System.out.println("Going to sleep for 3 Secs.. to simulate backend call.");
            Thread.sleep(SLEEP_TIME);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    @Cacheable(value = "post-single", key = "#id", unless = "#result.shares < 500")
    @GetMapping("/{id}")
    public Post getPostByID(@PathVariable long id) throws PostNotFoundException {
        log.info("get post with id {}", id);
        sleep();
        return postService.getPostById(id);
    }

    @CachePut(value = "post-single", key = "#post.id")
    @PostMapping("/create")
    public Post createPost(@RequestBody Post post) throws PostNotFoundException {
        log.info("update post with {}", post);
        postService.createPost(post);
        return post;
    }

    @CachePut(value = "post-single", key = "#post.id")
    @PutMapping("/update/{id}")
    public Post updatePostByID(@PathVariable long id, @RequestBody Post post) throws PostNotFoundException {
        post.setId(id);
        log.info("update post with {}", post);
        postService.updatePost(post);
        return post;
    }

    @CacheEvict(value = "post-single", key = "#id")
    @DeleteMapping("/delete/{id}")
    public void deletePostByID(@PathVariable long id) throws PostNotFoundException {
        log.info("delete post with id {}", id);
        postService.deletePostById(id);
    }

    @Cacheable(value = "post-top")
    @GetMapping("/top")
    public List<Post> getTopPosts() {
        log.info("get top ten posts");
        sleep();
        return postService.getTopSharedPosts(1, 10);
    }

    @CacheEvict(value = "post-top")
    @GetMapping("/top/evict")
    public void evictTopPosts() {
        log.info("Evict post-top");
    }
}

