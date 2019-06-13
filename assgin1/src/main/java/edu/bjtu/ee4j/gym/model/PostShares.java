package edu.bjtu.ee4j.gym.model;

public class PostShares {

    private Post post;

    private int shares = 0;

    public Post getPost() {
        return post;
    }

    public void setPost(Post post) {
        this.post = post;
    }

    public int getShares() {
        return shares;
    }

    public void setShares(int shares) {
        this.shares = shares;
    }
}
