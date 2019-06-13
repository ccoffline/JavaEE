package edu.bjtu.ee4j.gym.model.post;


import edu.bjtu.ee4j.gym.model.user.User;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "post_author")
public class PostAuthor {

    @Id
    private Post post;

    private User author;
}
