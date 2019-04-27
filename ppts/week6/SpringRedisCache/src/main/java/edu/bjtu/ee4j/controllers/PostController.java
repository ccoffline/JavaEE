package edu.bjtu.ee4j.controllers;

import edu.bjtu.ee4j.exceptions.PostNotFoundException;
import edu.bjtu.ee4j.model.Post;
import edu.bjtu.ee4j.services.PostService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.CachePut;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/posts")
public class PostController {

    private static final Logger log = LoggerFactory.getLogger(PostController.class);

    private final PostService postService;

    public PostController(PostService postService) {
        this.postService = postService;
    }

    @Cacheable(value = "post-single", key = "#id", unless = "#result.shares < 500")
    @GetMapping("/{id}")
    public Post getPostByID(@PathVariable String id) throws PostNotFoundException {
        log.info("get post with id {}", id);
        try {
            System.out.println("Going to sleep for 5 Secs.. to simulate backend call.");
            Thread.sleep(1000 * 5);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

        return postService.getPostByID(id);
    }

    @CachePut(value = "post-single", key = "#post.id")
    @PutMapping("/update")
    public Post updatePostByID(@RequestBody Post post) throws PostNotFoundException {
        log.info("update post with id {}", post.getId());
        postService.updatePost(post);
        return post;
    }

    @CacheEvict(value = "post-single", key = "#id")
    @DeleteMapping("/delete/{id}")
    public void deletePostByID(@PathVariable String id) throws PostNotFoundException {
        log.info("delete post with id {}", id);
        postService.deletePost(id);
    }

    @Cacheable(value = "post-top")
    @GetMapping("/top")
    public List<Post> getTopPosts() {
        log.info("get top ten posts");
        try {
            System.out.println("Going to sleep for 5 Secs.. to simulate backend call.");
            Thread.sleep(1000 * 5);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

        return postService.getTopPosts();
    }

    @CacheEvict(value = "post-top")
    @GetMapping("/top/evict")
    public void evictTopPosts() {
        log.info("Evict post-top");
    }

}

